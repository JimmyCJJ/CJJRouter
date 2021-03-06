//
//  UIViewController+Dealloc.m
//  CJJRouterDemo
//
//  Created by JimmyCJJ on 2020/2/19.
//  github   : https://github.com/JimmyCJJ
//  wechat   : cjj_ohyeah
//  E-mail   : 403327747@qq.com
//  jianshu  : https://www.jianshu.com/u/fd9922e50c1a
//  欢迎同行一起交流
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#import "UIViewController+Dealloc.h"
#import "NSObject+MethodChange.h"
@implementation UIViewController (Dealloc)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self cjj_method_changeWithOriSEL:NSSelectorFromString(@"dealloc") cusSEL:@selector(cjj_dealloc)];
    });
}

- (void)cjj_dealloc
{
    NSLog(@"————————%@释放——————————",[self class]);
    [self cjj_dealloc];
}




@end
