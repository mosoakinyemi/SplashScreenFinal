/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@implementation AppDelegate

//
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//
//   UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"AnimationView" bundle:[NSBundle mainBundle]];
//   UIViewController *vc =[storyboard instantiateInitialViewController];
//
//   // Set root view controller and make windows visible
//   self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//   self.window.rootViewController = vc;
//   [self.window makeKeyAndVisible];
//
//   return YES;
//}

// -(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    if (true) {
//        // To-do, show logged in view
//    } else {
//        // No, display the login page.
//        [self showLoginView];
//    }
//    return YES;
//}
//- (void)showAnimatedView
//{
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
//    AnimatedViewController *animatedViewController = [storyboard instantiateViewControllerWithIdentifier:@"AnimatedViewController"];
//    [self.window makeKeyAndVisible];
//    [self.window.rootViewController presentViewController:animatedViewController animated:YES completion:NULL];
//}


//-----Trial 2-----//
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"AnimationView" bundle:[NSBundle mainBundle]];
//    AnimationViewController *initialVC = [storyboard instantiateViewControllerWithIdentifier:@"AnimationViewController"];
//    self.window.rootViewController = initialVC;
//    [self.window makeKeyAndVisible];
//
//    ShowThisViewController *showThisVC = [storyboard instantiateViewControllerWithIdentifier:@"ShowThisViewController"];
//    [self.window.rootViewController presentViewController:showThisVC animated:YES completion:nil];
//
//    return YES; }


//-----Original Codes--------//

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
  RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                   moduleName:@"SplashScreenFinal"
                                            initialProperties:nil];

  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
