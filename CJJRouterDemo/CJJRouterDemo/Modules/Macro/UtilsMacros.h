//
//  UtilsMacros.h
//  CJJRouterDemo
//
//  Created by JimmyCJJ on 2020/5/23.
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#ifndef UtilsMacros_h
#define UtilsMacros_h

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
//导航栏高度
#define JMStatusBarHeight [[UIApplication sharedApplication] statusBarFrame].size.height
#define JMSmallNavBarHeight 44.0
#define JMNavBarHeight (JMStatusBarHeight + JMSmallNavBarHeight)

#endif /* UtilsMacros_h */
