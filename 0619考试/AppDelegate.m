//
//  AppDelegate.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "AppDelegate.h"
#import "HQLoginViewController.h"
#import "HQAccountModel.h"
#import "HQHomeViewController.h"
#import "HQMoreViewController.h"
#import "HQRecommendViewController.h"
#import "HQAreaViewController.h"

#define HQLoginViewPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"loginSing.archive"]

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    HQAccountModel *account = [NSKeyedUnarchiver unarchiveObjectWithFile:HQLoginViewPath];
    if (account.name) {
        UITabBarController *tabbarC = [[UITabBarController alloc] init];
        tabbarC.tabBar.tintColor = [UIColor whiteColor];
        tabbarC.tabBar.barTintColor = [UIColor colorWithRed:136 / 255.0 green:15 / 155.0 blue:17 / 255.0 alpha:1];
        HQHomeViewController *hvc = [[HQHomeViewController alloc] init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:hvc];
        HQRecommendViewController *rvc = [[HQRecommendViewController alloc] init];
        UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:rvc];
        HQAreaViewController *avc = [[HQAreaViewController alloc] init];
        UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:avc];
        HQMoreViewController *mvc = [[HQMoreViewController alloc] init];
        mvc.delegate = (id)hvc;
        UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:mvc];
        tabbarC.viewControllers = @[nav, nav1, nav2, nav3];
        self.window.rootViewController = tabbarC;
    } else {
        self.window.rootViewController = [[HQLoginViewController alloc] init];
    }
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
