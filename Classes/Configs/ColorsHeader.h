//
//  ColorsHeader.h
//
//  Created by BruceZCQ on 14-5-29.
//  Copyright (c) 2014年 OpeningO,Inc ( http://openingo.github.io/ http://zhucongqi.cn ). All rights reserved.
//

#ifndef OpeningO_ColorsHeader_h
#define OpeningO_ColorsHeader_h

#define RGBColor(r,g,b,a) [UIColor colorWithRed:(CGFloat)r/0xff green:(CGFloat)g/0xff blue:(CGFloat)b/0xff alpha:a]


#define UIColorFromRGB(rgbValue) [UIColor \
    colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
    green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
    blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#endif
