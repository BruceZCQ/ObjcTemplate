//
//  ParamsHeader.h
//
//  Created by BruceZCQ on 10/25/14.
//  Copyright (c) 2014 BruceZCQ. All rights reserved.
//

#ifndef OO_ParamsHeader_h
#define OO_ParamsHeader_h

#pragma mark -  @version 1.0.0beta Start

/// 内部版本号[integerValue]
#define kCurrentInnerAppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"]

/// 对外版本号
#define kAppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

/// bundle ID
#define kBundleID   [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"]

/// delegate
#define kApp    [UIApplication sharedApplication]
#define kAppDelegate kApp.delegate

/// 网络是否可用
#define kNetworkIsReached      [AFNetworkReachabilityManager sharedManager].reachable
#define kNewworkNotReadchedMessage [kAppDelegate showHUDMessage:@"😰网络好像有点问题" hideDelay:1.0]

/// device uuid
#define kUUID [[UIDevice currentDevice] identifierForVendor].UUIDString

/// frame make
#define frame(x,y,w,h)  CGRectMake(x, y, w, h)

#pragma mark -  @version 1.0.0beta End

#endif
