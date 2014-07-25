//
//  Utils.m
//
//  Created by BrureZCQ on 6/27/14.
//  Copyright (c) 2014 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn/ ). All rights reserved.
//

#import "Utils.h"

@implementation Utils

+ (Utils *)shareUtils
{
    static Utils *utils = nil;
    static dispatch_once_t singleDialogCachepredicate;
    dispatch_once(&singleDialogCachepredicate, ^{
        utils = [[self alloc] init];
    });
    return utils;
}

//- (void)testing
//{
//    
//}
//
//+ (void)testing2
//{
//    
//}

@end
