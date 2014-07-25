//
//  Settings.m
//
//  Created by BrureZCQ on 6/27/14.
//  Copyright (c) 2014 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn/ ). All rights reserved.
//

#import "Settings.h"

@implementation Settings

+ (Settings *)shareSettings
{
    static Settings *settings = nil;
    static dispatch_once_t singleDialogCachepredicate;
    dispatch_once(&singleDialogCachepredicate, ^{
        settings = [[self alloc] init];
    });
    return settings;
}

@end
