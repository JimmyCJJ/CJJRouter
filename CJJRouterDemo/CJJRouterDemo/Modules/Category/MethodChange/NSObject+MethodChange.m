//
//  NSObject+MethodChange.m
//  CJJRouterDemo
//
//  Created by JimmyCJJ on 2020/1/4.
//  github   : https://github.com/JimmyCJJ
//  wechat   : cjj_ohyeah
//  E-mail   : 403327747@qq.com
//  jianshu  : https://www.jianshu.com/u/fd9922e50c1a
//  欢迎同行一起交流
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#import "NSObject+MethodChange.h"

#import <objc/message.h>

@implementation NSObject (MethodChange)

- (void)cjj_method_changeWithOriSEL:(SEL)oriSEL cusSEL:(SEL)cusSEL
{
    [self cjj_method_changeWithOriSEL:oriSEL cusSEL:cusSEL ownClass:[self class]];
}

- (void)cjj_method_changeWithOriSEL:(SEL)oriSEL cusSEL:(SEL)cusSEL ownClass:(Class)ownClass
{
    Class cls = ownClass;
    
    Method oriMethod = class_getInstanceMethod(cls, oriSEL);
    Method cusMethod = class_getInstanceMethod(cls, cusSEL);
    
    BOOL isSucc = class_addMethod(cls, oriSEL, method_getImplementation(oriMethod), method_getTypeEncoding(oriMethod));
    
    if(isSucc)
    {
        class_replaceMethod(cls, cusSEL, method_getImplementation(oriMethod), method_getTypeEncoding(oriMethod));
    }else{
        method_exchangeImplementations(oriMethod, cusMethod);
    }
}

@end
