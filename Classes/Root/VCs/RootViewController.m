//
//  RootViewController.m
//
//  Created by BruceZCQ on 14-5-29.
//  Copyright (c) 2014年 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn ). All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{

}
@end

@implementation RootViewController


- (void)loadView
{
    [super loadView];
//    [self fixFrame];
    self.edgesForExtendedLayout = UIRectEdgeNone;//=>clear bg
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.allowEditPickedImage = YES;
    }
    return self;
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
    [self loadNavs];
    [self setupViews];
}

- (void)loadNavs
{
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                style: UIBarButtonItemStylePlain target:nil
                                                               action:nil];
    self.navigationItem.backBarButtonItem = barItem;
}

// return YES, can back, NO ignore back action
- (BOOL)navigationShouldPopOnBackButton
{
    return YES;
}

- (void)dealloc
{
    [self deallocVc];
}

- (void)deallocVc
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
//    if ([self isViewLoaded] && self.view.window == nil) {
//        self.view = nil;
//    }
}

- (void)setupViews
{
    //setting view
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}

- (void)updateNavigationBarHiddenState:(BOOL)state
{
    [self.navigationController setNavigationBarHidden:state animated:NO];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // 去掉nav 的下划线
    [self.navigationController.navigationBar hideBottomHairline];
}

#pragma mark - PickImage

- (void)pickerImageFromCameraWithTag:(NSInteger)tag
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIImagePickerController *ipc = [[UIImagePickerController alloc] init];
        ipc.sourceType = UIImagePickerControllerSourceTypeCamera;
        ipc.delegate = self;
        ipc.allowsEditing = self.allowEditPickedImage;
        ipc.view.tag = tag;
        [self presentViewController:ipc animated:YES completion:nil];
    }
}

- (void)pickerImageFromAlbumWithTag:(NSInteger)tag
{
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum]) {
        UIImagePickerController *ipc = [[UIImagePickerController alloc] init];
        ipc.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        ipc.delegate = self;
        ipc.allowsEditing = self.allowEditPickedImage;
        ipc.view.tag = tag;
        [self presentViewController:ipc animated:YES completion:nil];
    }
}

#pragma mark UIImagePickerControllerDelegate methods
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //    NSData * data= UIImageJPEGRepresentation(image,0.05);
    // edit image
    UIImage *editImage = [info objectForKey:UIImagePickerControllerEditedImage];
    [self pickEditedImage:editImage tag:picker.view.tag];
    UIImage *originImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    // origin image
    [self pickOriginedImage:originImage tag:picker.view.tag];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)pickEditedImage:(UIImage *)image tag:(NSInteger)tag
{

}

- (void)pickOriginedImage:(UIImage *)image tag:(NSInteger)tag
{
    
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
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

#pragma mark - StatusBar

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (BOOL)prefersStatusBarHidden
{
    return NO;
}

@end
