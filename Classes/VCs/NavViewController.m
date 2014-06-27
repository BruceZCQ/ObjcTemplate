//
//  NavViewController.m
//
//  Created by BruceZCQ on 14-5-29.
//  Copyright (c) 2014年 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn ). All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()

@end

@implementation NavViewController

#pragma mark - style

- (void)configNavigationBar
{
    if (NO) {
//        [self.navigationBar setTintColor:kAUSThemeColor];
    }else{
//        [self.navigationBar setBarTintColor:kAUSThemeColor];
    }
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont boldSystemFontOfSize:18.0f],NSFontAttributeName,nil]];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName,
                                                          [UIFont systemFontOfSize:18],NSFontAttributeName,
                                                          nil]
                                                forState:UIControlStateNormal];
    [[UIImageView appearanceWhenContainedIn:[UINavigationBar class], nil] setTintColor:[UIColor whiteColor]];
}


#pragma mark - AutoRate

-(BOOL)shouldAutorotate {
    return [[self.viewControllers lastObject] shouldAutorotate];
}

-(NSUInteger)supportedInterfaceOrientations {
    NSUInteger support = [[self.viewControllers lastObject] supportedInterfaceOrientations];
//    [self configNavigationBar];
    return support;
}


- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    if (self && self.viewControllers && self.viewControllers.count == 0) {
        return UIInterfaceOrientationPortrait;
    }
    return [[self.viewControllers lastObject] preferredInterfaceOrientationForPresentation];
}

#pragma mark - StatusBar

-(UIStatusBarStyle) preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

-(BOOL) prefersStatusBarHidden
{
    return NO;
}

@end
