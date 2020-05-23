//
//  ViewControllerTwo.m
//  CJJRouterDemo
//
//  Created by JimmyCJJ on 2020/5/23.
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#import "ViewControllerTwo.h"

@interface ViewControllerTwo ()
@property (nonatomic,strong) NSString *name;
@end

@implementation ViewControllerTwo

#pragma mark - life cycle

- (void)setWithParams:(NSMutableDictionary *)params{
    self.name = [params objectForKey:@"name"];
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
