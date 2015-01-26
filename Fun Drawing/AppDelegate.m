//
//  AppDelegate.m
//  Fun Drawing
//
//  Created by Kotaro Yama on 1/18/15.
//  Copyright (c) 2015 Kotaro Yamamoto. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CGRect newFrame= [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame:newFrame];
    self.window.backgroundColor = [UIColor whiteColor];
    viewController = [[ViewController alloc] init];
    [self.window addSubview:viewController.view];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
