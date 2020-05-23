//
//  AppDelegate.m
//  CJJRouterDemo
//
//  Created by 曹鉴津 on 2020/5/24.
//  Copyright © 2020 jimmy. All rights reserved.
//

#import "AppDelegate.h"
#import "BaseNavigationController.h"
#import "ViewControlleMain.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ViewControlleMain *mainVC = [ViewControlleMain new];
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:mainVC];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
