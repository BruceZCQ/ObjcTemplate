//
//  NSDate+Utils.m
//  Meet
//
//  Created by BruceZCQ on 2/4/15.
//  Copyright (c) 2015 BruceZCQ. All rights reserved.
//

#import "NSDate+Utils.h"

@implementation NSDate (Utils)

- (NSDateComponents *)dateComponents
{
    return [[NSCalendar currentCalendar] components:(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday)
                                                 fromDate:self];
}

- (NSInteger)year
{
    return self.dateComponents.year;
}

- (NSInteger)month
{
    return self.dateComponents.month;
}

- (NSInteger)day
{
    return self.dateComponents.day;
}

- (NSInteger)weekday
{
    return self.dateComponents.weekday;
}

@end
