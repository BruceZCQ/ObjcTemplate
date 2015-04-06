//
//  NSObject+OO.h
//
//  Created by BrureZCQ on 6/27/14.
//  Copyright (c) 2014 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn/ ). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (OO)

- (void)setup;

/// YES : circle ; NO: NoCircle
- (void)setOpenCircle:(BOOL)openCircle;

/// Set circle
- (void)setOpenCircleWithCornerRadius:(CGFloat)cornerRadius;

/// set cornerRadius
- (void)setViewCornerRadius:(CGFloat)cornerRadius;

/**
 *  @author BruceZCQ (brucezcq@gmail.com)
 *
 *  @brief  设置边框
 *
 *  @param borderColor 边框颜色
 *  @param width       边框宽度
 */
- (void)setBorderColor:(UIColor *)borderColor width:(CGFloat)width;

/**
 *  @author BruceZCQ (brucezcq@gmail.com)
 *
 *  @brief  设置 layer 的背景颜色
 *
 *  @param color 颜色
 */
- (void)setLayerBackgroundColor:(UIColor *)color;

/// user to UIView (SubViews)
- (void)addTarget:(id)target action:(SEL)selector;

@end
