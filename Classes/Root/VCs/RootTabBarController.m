//
//  RootTabBarController.m
//
//  Created by BruceZCQ on 14-5-29.
//  Copyright (c) 2014年 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn ). All rights reserved.
//

#import "RootTabBarController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController


#pragma mark - AutoRate

// > 6.0
//default open auto rate, but need seetting rate orientation in sub class
- (BOOL)shouldAutorotate
{
    return YES;
}

//[2]
//default support portrait orientation
- (NSUInteger)supportedInterfaceOrientations
{
    // up and down mode
    return UIInterfaceOrientationMaskPortrait|UIInterfaceOrientationMaskPortraitUpsideDown;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
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
