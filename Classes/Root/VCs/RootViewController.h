//
//  RootViewController.h
//
//  Created by BruceZCQ on 14-5-29.
//  Copyright (c) 2014年 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn ). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController

/**
 *  @author BruceZCQ(zhucongqi@91paiyipai.com), 15-03-23 11:03:56
 *
 *  @brief  是否允许编辑从 imagepicker 获取的图片
 */
@property (nonatomic, assign) BOOL allowEditPickedImage;

/**
 *  @author BruceZCQ(zhucongqi@91paiyipai.com), 15-03-23 11:03:58
 *
 *  @brief  加入 navs
 */
- (void)loadNavs;

/**
 *  @author BruceZCQ(zhucongqi@91paiyipai.com), 15-03-23 11:03:03
 *
 *  @brief  setup views
 */
- (void)setupViews;

/**
 *  @author BruceZCQ(zhucongqi@91paiyipai.com), 15-03-23 11:03:09
 *
 *  @brief  修改 nav 的 hidden 状态
 *
 *  @param state
 */
- (void)updateNavigationBarHiddenState:(BOOL)state;

/**
 *  @author BruceZCQ(zhucongqi@91paiyipai.com), 15-03-23 11:03:24
 *
 *  @brief  销毁
 */
- (void)deallocVc;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  camera picke image
 *
 *  @param tag default kDefaultImagePickerViewTag
 */
- (void)pickerImageFromCameraWithTag:(NSInteger)tag;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  album pick image
 *
 *  @param tag default kDefaultImagePickerViewTag
 */
- (void)pickerImageFromAlbumWithTag:(NSInteger)tag;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  picked image
 *
 *  @param image pickEdited image instance
 *  @param tag   picker picker view tag ,default kDefaultImagePickerViewTag
 */
- (void)pickEditedImage:(UIImage *)image tag:(NSInteger)tag;

/**
 *  @author BruceZCQ(zhucongqi@91paiyipai.com), 15-03-23 11:03:57
 *
 *  @brief  picked origin image
 *
 *  @param image  原始图片
 *  @param tag   
 */
- (void)pickOriginedImage:(UIImage *)image tag:(NSInteger)tag;

@end
