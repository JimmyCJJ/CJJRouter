//
//  ViewControlleMain.m
//  CJJRouterDemo
//
//  Created by JimmyCJJ on 2020/5/23.
//  github   : https://github.com/JimmyCJJ
//  wechat   : cjj_ohyeah
//  E-mail   : 403327747@qq.com
//  jianshu  : https://www.jianshu.com/u/fd9922e50c1a
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#import "ViewControlleMain.h"

@interface ViewControlleMain ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataArr;
@end

@implementation ViewControlleMain

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
    [self setUpLayout];
}

#pragma mark - set up

- (void)setUpView{
    self.navigationItem.title = @"我负责跳转控制器";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
}

- (void)setUpLayout{
    
}

#pragma mark - action

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        [self.navigationController pushViewController:CJJRouterCreatVC(@"ViewControllerOne") animated:YES];
    }else if (indexPath.row == 1){
        [self.navigationController pushViewController:CJJRouterCreatNormalParamsVC(@"ViewControllerTwo", @{@"name":@"我是一个带参数的控制器（Fix NormalMethod）"}) animated:YES];
    }else if (indexPath.row == 2){
        [self.navigationController pushViewController:CJJRouterCreatInitParamsVC(@"ViewControllerThree", @{@"name":@"我是一个带参数的控制器（Fix InitMethod）"}) animated:YES];
    }else if (indexPath.row == 3){
        [self.navigationController pushViewController:CJJRouterCreatParamsVC(@"ViewControllerFour", @{@"name":@"我是一个带参数的控制器（Custom NormalMethod）"}, @"receiveWithCustomParams:", NO) animated:YES];
    }else if (indexPath.row == 4){
        [self.navigationController pushViewController:CJJRouterCreatParamsVC(@"ViewControllerFive", @{@"name":@"我是一个带参数的控制器（Custom InitMethod）"}, @"initWithCustomParams:", YES) animated:YES];
    }else if (indexPath.row == 5){
        [CJJRouter sharedCJJRouter].failVC = nil;
        [self.navigationController pushViewController:CJJRouterCreatVC(@"unKnownVC") animated:YES];
    }else{
        [CJJRouter sharedCJJRouter].failVC = CJJRouterCreatNormalParamsVC(@"ViewControllerCustomFailVC", @{@"name":@"我是一个不存在的控制器（自定义）"});
        [self.navigationController pushViewController:CJJRouterCreatVC(@"unKnownVC") animated:YES];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = self.dataArr[indexPath.row];
    return cell;
}

#pragma mark - lazy

- (UITableView *)tableView{
    if(!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, CJJNavBarHeight, SCREEN_WIDTH, SCREEN_HEIGHT-CJJNavBarHeight) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor whiteColor];
    }
    return _tableView;
}

- (NSMutableArray *)dataArr{
    if(!_dataArr){
        _dataArr = [NSMutableArray arrayWithArray:@[@"跳转不带参数的控制器",@"跳转带参数的控制器（Fix NormalMethod）",@"跳转带参数的控制器（Fix InitMethod）",@"跳转带参数的控制器（Custom NormalMethod）",@"跳转带参数的控制器（Custom InitMethod）",@"跳转不存在的控制器（默认）",@"跳转不存在的控制器（自定义）"]];
    }
    return _dataArr;
}

@end
