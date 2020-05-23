//
//  CJJRouter.m
//  CAOJIANJIN
//
//  Created by JimmyCJJ on 2020/5/22.
//  Copyright © 2020 CAOJIANJIN. All rights reserved.
//

#import "CJJRouter.h"
#import "CJJRouterFailVC.h"

//ignore selector unknown warning
#define SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

@implementation CJJRouter

#pragma mark - 单例

+ (CJJRouter *)sharedCJJRouter{
    static CJJRouter *sharedCJJRouter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedCJJRouter = [[self alloc] init];
    });
    return sharedCJJRouter;
}

#pragma mark - public method

- (UIViewController *)creatVCWithName:(NSString *)vcName{
    UIViewController *vc = [NSClassFromString(vcName) new];
    if(!vc){
        NSLog(@"找不到该类，请检查类名！");
        return [CJJRouterFailVC new];
    }
    return vc;
}

- (UIViewController *)creatVCWithInitMethodWithName:(NSString *)vcName
                                                   params:(NSDictionary *)paramsMuDic{
    return [self creatVCWithName:vcName params:paramsMuDic paramsSelectorName:@"initWithParams:" isCustomInitMethod:YES];
}

- (UIViewController *)creatVCWithNormalMethodWithName:(NSString *)vcName
                                               params:(NSDictionary *)paramsMuDic{
    return [self creatVCWithName:vcName params:paramsMuDic paramsSelectorName:@"setWithParams:" isCustomInitMethod:NO];
}

- (UIViewController *)creatVCWithName:(NSString *)vcName
                               params:(NSDictionary *)paramsMuDic
                   paramsSelectorName:(NSString * )paramsSelectorName
                   isCustomInitMethod:(BOOL)isCustomInitMethod{
    //参数列表判空
    NSMutableDictionary *params;
    if(!paramsMuDic){
        params = [NSMutableDictionary dictionary];
    }else{
        params = [paramsMuDic mutableCopy];
    }
    //带上标识
    [params setObject:vcName forKey:@"RouterKey"];
    
    //方法实现判空
    SEL paramsSelector = NSSelectorFromString(paramsSelectorName);
    
    //创建vc
    UIViewController *vc;
    if(isCustomInitMethod){
        vc = [NSClassFromString(vcName) alloc];
        
        if(!vc){
            NSLog(@"找不到该类，请检查类名！");
            return [[CJJRouterFailVC alloc] init];
        }
        
        if(![vc respondsToSelector:paramsSelector]){
            NSLog(@"找不到该参数方法，请检查方法名！");
            return [vc init];
        }
        SuppressPerformSelectorLeakWarning([vc performSelector:paramsSelector withObject:params]);
    }else{
        vc = [self creatVCWithName:vcName];
        if(![vc respondsToSelector:paramsSelector]){
            NSLog(@"找不到该参数方法，请检查方法名！");
            return vc;
        }
        SuppressPerformSelectorLeakWarning([vc performSelector:paramsSelector withObject:params]);
    }
    
    return vc;
}

@end
