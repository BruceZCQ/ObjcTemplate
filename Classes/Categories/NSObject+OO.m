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
        [self setViewCornerRadius:5.0];
        ((UIImageView *)self).userInteractionEnabled = YES ;
    }
}

- (void)setOpenCircle:(BOOL)openCircle
{
    [self isNoView];
    UIView *isView = ((UIView *)self);
    if (isView && openCircle) {
        [self setViewCornerRadius:isView.bounds.size.width/2.0];
    }
}

- (void)setOpenCircleWithCornerRadius:(CGFloat)cornerRadius
{
    [self isNoView];
    UIView *isView = ((UIView *)self);
    if (isView) {
        [self setViewCornerRadius:cornerRadius];
    }
}

- (void)setViewCornerRadius:(CGFloat)cornerRadius
{
    [self isNoView];
    UIView *isView = ((UIView *)self);
    isView.layer.cornerRadius = cornerRadius;
    isView.layer.masksToBounds = YES;
    isView.clipsToBounds = YES;
}


- (void)setBorderColor:(UIColor *)borderColor width:(CGFloat)width
{
    [self isNoView];
    UIView *isView = ((UIView *)self);
    isView.layer.borderColor = borderColor.CGColor;
    isView.layer.borderWidth = width;
}

- (void)setLayerBackgroundColor:(UIColor *)color
{
    [self isNoView];
    UIView *isView = ((UIView *)self);
    isView.layer.backgroundColor = color.CGColor;
}

- (void)isNoView
{
    NSAssert([self isKindOfClass:[UIView class]],@"method just use to UIView(Subviews)");
}

- (void)addTarget:(id)target action:(SEL)selector
{
    [self isNoView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:selector];
    UIView *isView = ((UIView *)self);
    isView.userInteractionEnabled = YES;
    [isView addGestureRecognizer:tap];
}

@end
