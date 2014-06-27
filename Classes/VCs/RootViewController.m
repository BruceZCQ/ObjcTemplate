//
//  RootViewController.m
//
//  Created by BruceZCQ on 14-5-29.
//  Copyright (c) 2014年 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn ). All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
{

}
@end

@implementation RootViewController


- (void)loadView
{
    [super loadView];
    [self fixFrame];
}

- (void)fixFrame
{
    CGRect frame = [UIScreen mainScreen].bounds;
    if (OSVersionIsAtLeastiOS7 == YES) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }else{
        frame.size.height -= 20 + 44;
    }
    
    self.view.frame = frame;
    self.view.bounds = frame;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupViews];
//    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style: UIBarButtonItemStylePlain target:nil action:nil];
//    self.navigationItem.backBarButtonItem = barItem;
}

//responder
- (BOOL)becomeFirstResponder
{
    for (UIView *subView in self.view.subviews) {
        [subView resignFirstResponder];
    }
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    if ([self isViewLoaded] && self.view.window == nil) {
        self.view = nil;
    }
}

- (void)setupViews
{
    //setting view
}

- (void)updateNavigationBarHiddenState:(BOOL)state
{
    [self.navigationController setNavigationBarHidden:state animated:NO];
}

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
