//
//  NSDate+Utils.h
//  Meet
//
//  Created by BruceZCQ on 2/4/15.
//  Copyright (c) 2015 BruceZCQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Utils)

- (NSInteger)year;

- (NSInteger)month;

- (NSInteger)day;

// 1 = Sunday, 2 = Monday, etc.
- (NSInteger)weekday;

@end
