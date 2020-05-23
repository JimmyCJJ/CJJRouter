//
//  ViewControllerOne.m
//  CJJRouterDemo
//
//  Created by JimmyCJJ on 2020/5/23.
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#import "ViewControllerOne.h"

@interface ViewControllerOne ()

@end

@implementation ViewControllerOne

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
    [self setUpLayout];
}

#pragma mark - set up

- (void)setUpView{
    self.navigationItem.title = @"我是一个不带参数的控制器";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setUpLayout{
    
}

#pragma mark - action


#pragma mark - lazy



@end
