//
//  AppDelegate.m
//  case_tool
//
//  Created by better_yst on 2020/10/21.
//  Copyright © 2020 better_yst. All rights reserved.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface AppDelegate()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//   self.window = [[UIWindow alloc] initWithFrame:
//    [[UIScreen mainScreen] bounds]];
//    // Override point for customization after application launch.
//    self.viewController = [[ViewController alloc]
//     initWithNibName:@"ViewController" bundle:nil];
//    self.window.rootViewController = self.viewController;
//    [self.window makeKeyAndVisible];
    
//    self.window.rootViewController = self.viewController;
//    // Override point for customization after application launch.
//    [self.window makeKeyAndVisible];
    
       self.window = [[UIWindow alloc] initWithFrame:
       [[UIScreen mainScreen] bounds]];
       // Override point for customization after application launch.
       self.viewController = [[ViewController alloc]
       initWithNibName:@"ViewController" bundle:nil];
       //Navigation controller init with ViewController as root
       UINavigationController *navController = [[UINavigationController alloc]
       initWithRootViewController:self.viewController];
       self.window.rootViewController = navController;
       [self.window makeKeyAndVisible];
       return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
