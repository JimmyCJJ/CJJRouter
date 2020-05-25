//
//  NSObject+MethodChange.h
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



#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (MethodChange)
- (void)cjj_method_changeWithOriSEL:(SEL)oriSEL cusSEL:(SEL)cusSEL;

- (void)cjj_method_changeWithOriSEL:(SEL)oriSEL cusSEL:(SEL)cusSEL ownClass:(Class)ownClass;
@end

NS_ASSUME_NONNULL_END
