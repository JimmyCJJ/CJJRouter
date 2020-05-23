//
//  CJJRouter.h
//  CAOJIANJIN
//
//  Created by JimmyCJJ on 2020/5/22.
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//快速创建VC宏定义（不带参数）
#define CJJRouterCreatNormalVC(vcName) [[CJJRouter sharedCJJRouter] creatVCWithName:vcName]

//快速创建VC宏定义（普通方法传参）
#define CJJRouterCreatNormalParamsVC(vcName,paramsDic) [[CJJRouter sharedCJJRouter] creatVCWithNormalMethodWithName:vcName params:paramsDic]

//快速创建VC宏定义（初始化方法传参）
#define CJJRouterCreatInitParamsVC(vcName,paramsDic) [[CJJRouter sharedCJJRouter] creatVCWithInitMethodWithName:vcName params:paramsDic]

//快速创建VC宏定义（自定义方法传参）
#define CJJRouterCreatParamsVC(vcName,paramsDic,selectorName,isCustom)\
[[CJJRouter sharedCJJRouter] creatVCWithName:vcName params:paramsDic paramsSelectorName:selectorName isCustomInitMethod:isCustom]

NS_ASSUME_NONNULL_BEGIN

@interface CJJRouter : NSObject

/// 单例类方法
+ (CJJRouter *)sharedCJJRouter;

/// runtime创建控制器（默认，不带参数）
/// @param vcName 控制器名称
- (UIViewController *)creatVCWithName:(NSString *)vcName;

/// runtime创建控制器（带参数，自定义普通方法传参，目标控制器需实现setWithParams:）
/// @param vcName 控制器名称
/// @param paramsMuDic 参数列表（可传NSDictionary/NSMutableDictionary）
- (UIViewController *)creatVCWithNormalMethodWithName:(NSString *)vcName
                                               params:(NSDictionary *)paramsMuDic;

/// runtime创建控制器（带参数，自定义init方法传参，目标控制器需实现initWithParams:）
/// @param vcName 控制器名称
/// @param paramsMuDic 参数列表（可传NSDictionary/NSMutableDictionary）
- (UIViewController *)creatVCWithInitMethodWithName:(NSString *)vcName
                                             params:(NSDictionary *)paramsMuDic;

/// runtime创建控制器（带参数，完全自定义方法）
/// @param vcName 控制器名称
/// @param paramsMuDic 参数列表（可传NSDictionary/NSMutableDictionary）
/// @param paramsSelectorName 用来初始化参数的方法
/// @param isCustomInitMethod 是否自定义初始化方法 默认NO，若为YES，则paramsSelectorName必须为自定义的init方法
- (UIViewController *)creatVCWithName:(NSString *)vcName
                               params:(NSDictionary *)paramsMuDic
                   paramsSelectorName:(NSString * )paramsSelectorName
                   isCustomInitMethod:(BOOL)isCustomInitMethod;

@end

NS_ASSUME_NONNULL_END