//
//  NSObject+OO.m
//
//  Created by BrureZCQ on 6/27/14.
//  Copyright (c) 2014 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn/ ). All rights reserved.
//

#import "NSObject+OO.h"

@implementation NSObject (OO)

- (void)setup
{
    if ([self isKindOfClass:[UILabel class]]) {
        ((UILabel *)self).backgroundColor = [UIColor clearColor];
    }else if ([self isKindOfClass:[UIImageView class]]) {
        ((UIImageView *)self).layer.cornerRadius = 5 ;
    }
}

@end
