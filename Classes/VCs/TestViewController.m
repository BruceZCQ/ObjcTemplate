//
//  TestViewController.m
//  ImFans
//
//  Created by congqizhu on 7/21/15.
//  Copyright (c) 2015 YFSS. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()<ISFSEvents>

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    OOUIImageView *img = [[OOUIImageView alloc] initWithFrame:frame(100, 100, 100, 100)];
    img.backgroundColor = [UIColor redColor];
    [self.view addSubview:img];
    
    SmartFox2XClient *client = [[SmartFox2XClient alloc] initSmartFoxWithDebugMode:YES delegate:self];
    NSLog(@"client %@",client);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
