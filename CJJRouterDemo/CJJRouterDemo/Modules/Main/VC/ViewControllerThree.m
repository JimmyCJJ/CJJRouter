//
//  ViewControllerThree.m
//  CJJRouterDemo
//
//  Created by JimmyCJJ on 2020/5/23.
//  github   : https://github.com/JimmyCJJ
//  wechat   : cjj_ohyeah
//  E-mail   : 403327747@qq.com
//  jianshu  : https://www.jianshu.com/u/fd9922e50c1a
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#import "ViewControllerThree.h"

@interface ViewControllerThree ()
@property (nonatomic,strong) NSString *name;
@end

@implementation ViewControllerThree

#pragma mark - life cycle

- (instancetype)initWithParams:(NSMutableDictionary *)params{
    self = [super init];
    if (self) {
        self.name = [params objectForKey:@"name"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
    [self setUpLayout];
}

#pragma mark - set up

- (void)setUpView{
    self.navigationItem.title = self.name;
    self.view.backgroundColor = [UIColor whiteColor];
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:self.name message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertVC addAction:action];
    [self presentViewController:alertVC animated:YES completion:nil];
}

- (void)setUpLayout{
    
}

#pragma mark - action


#pragma mark - lazy



@end
