//
//  AppDelegate.m
//  spritybird
//
//  Created by Alexis Creuzot on 09/02/2014.
//  Copyright (c) 2014 Alexis Creuzot. All rights reserved.
//

#import "AppDelegate.h"
#import "GameViewController.h"
#import <Skillz/Skillz.h>
#import "MainMenuViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Set the enviroment based on the build type
#ifdef DEBUG
    SkillzEnvironment skillzEnv = SkillzSandbox;
#else
    SkillzEnvironment skillzEnv = SkillzProduction;
#endif
    
    // General Skillz initialization
    // Id is given to us by the devportal
    [[Skillz skillzInstance] initWithGameId:@"777"
                                forDelegate:(MainMenuViewController *)self.window.rootViewController
                            withEnvironment:skillzEnv
                                  allowExit:YES];
    
    return YES;
}

- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
