//
//  OOLoginViewController.m
//  ObjcTemplate
//
//  Created by congqizhu on 1/4/16.
//  Copyright (c) 2016 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn/ ). All rights reserved.
//

#import "OOLoginViewController.h"
#import "OOUILabel.h"
#import "OOUIImageView.h"
#import "OOMainViewController.h"

@interface OOLoginViewController ()

@end

@implementation OOLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    UIButton *bb = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:bb];
    
    bb.frame = CGRectMake(10, 30, 100, 100);
    
    bb.backgroundColor = [UIColor blueColor];
    
    [bb addTarget:self action:@selector(onAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)onAction
{
    OOMainViewController *b = [OOMainViewController new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:b];
    [self presentViewController:nav animated:YES completion:nil];
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
