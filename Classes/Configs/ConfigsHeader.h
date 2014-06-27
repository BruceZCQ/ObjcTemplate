//
//  ConfigsHeader.h
//
//  Created by BruceZCQ on 14-5-29.
//  Copyright (c) 2014年 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn ). All rights reserved.
//

#ifndef OpeningO_ConfigHeaders_h
#define OpeningO_ConfigHeaders_h

//system version
#define kSystemVersion  [[[UIDevice currentDevice] systemVersion] floatValue]
#define kisSimulator    [[[UIDevice currentDevice] model] isEqualToString:@"iPhone Simulator"]
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define kiOS7System         kSystemVersion >= 7.0
#define kiOS6System         kSystemVersion < 7.0

#define OSVersionIsAtLeastiOS7  (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1)

#define SuppressPerformSelectorLeakWarning(Stuff) \
do { \
_Pragma("clang diagnostic push") \
_Pragma("clang diagnostic ignored \"-Warc-performSelector-leaks\"") \
Stuff; \
_Pragma("clang diagnostic pop") \
} while (0)

#endif
