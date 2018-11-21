//
//  AppDelegate.m
//  WebViewBug
//
//  Created by Chester Corcos on 11/20/18.
//  Copyright © 2018 Chet Corcos. All rights reserved.
//

#import "AppDelegate.h"
#import <WebKit/WebKit.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  
  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  WKWebView * webview = [[WKWebView alloc] initWithFrame:self.window.frame];
  // Don't adjust insets so it overlays the topbar.
  webview.scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
  NSLog(@"HERE");
  [webview loadRequest:[[NSURLRequest alloc] initWithURL:[[NSURL alloc] initWithString:@"http://localhost:8000"]]];
  rootViewController.view = webview;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
