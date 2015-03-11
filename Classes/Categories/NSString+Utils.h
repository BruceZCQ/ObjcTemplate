//
//  NSString+Utils.h
//  Meet
//
//  Created by BruceZCQ on 12/14/14.
//  Copyright (c) 2014 BruceZCQ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Utils)

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  MD5字符串
 *
 *  @return  md5之后的结果
 */

- (NSString *)md5;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  AES 加密
 *
 *  @return  aes 加密
 */
- (NSString *)encryptAES;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  AES 解密
 *
 *  @return 
 */
- (NSString *)decryptAES;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  连接字符串
 *
 *  @param subString 待连接字串
 *
 *  @return 连接结果
 */
- (NSString *)concat:(NSString *)subString;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  连接字符串times 次
 *
 *  @param subString 待连接字串
 *  @param times 连接次数
 *
 *  @return 连接结果
 */
- (NSString *)concat:(NSString *)subString times:(NSUInteger)times;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  连接字符串(在前面)
 *
 *  @param subString 待连接字符串
 *
 *  @return 连接结果
 */
- (NSString *)concatBefore:(NSString *)subString;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  判断 NSString 是否为空
 *
 *  @return  NSString 为 nil, 或@"" => YES, 反之为 NO
 */
- (BOOL)isEmpty;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  String 转换为 Long
 *
 *  @return longLong
 */
- (NSNumber *)toLongLongNumber;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  转换为无符号 Number
 *
 *  @return  无符号
 */
- (NSNumber *)toUnsignedIntNumber;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  转换为整型
 *
 *  @return 整型
 */
- (NSNumber *)toIntNumber;


/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  转换为 Float 型
 *
 *  @return  float 型
 */
- (NSNumber *)toFloatNumber;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  转换为 Double 型
 *
 *  @return  double 型
 */
- (NSNumber *)toDoubleNumber;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  转换为 NSURL
 *
 *  @return NSURL
 */
- (NSURL *)toNSURL;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  转换为 NSDate
 *
 *  @return NSDate
 */
- (NSDate *)toUnix1970Date;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  除去 white space
 *
 *  @return NSString
 */
- (NSString *)stringByTrimingWhitespace;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  展开 array[NString]
 *
 *  @param array  数据源
 *
 *  @return  string
 */
+ (NSString *)extendArray:(NSArray *)array;

/**
 *  @author BruceZCQ (brucezcq@gmail.com, zhucongqi@4jty.com)
 *
 *  @brief  当前时间的 unix_time
 *
 *  @return
 */
+ (NSString *)unixtimeSince1970;

@end
