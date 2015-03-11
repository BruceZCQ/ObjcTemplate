//
//  NSObject+Convert.m
//  Meet
//
//  Created by BruceZCQ on 12/17/14.
//  Copyright (c) 2014 BruceZCQ. All rights reserved.
//

#import "NSObject+Convert.h"

@implementation NSObject (Convert)

- (NSString *)toString
{
    return [NSString stringWithFormat:@"%@",self];
}

+ (NSString *)intToString:(NSInteger)nNum
{
    return [NSString stringWithFormat:@"%@",@(nNum)];
}

@end
