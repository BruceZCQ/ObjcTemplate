//
//  NSString+Utils.m
//  Meet
//
//  Created by BruceZCQ on 12/14/14.
//  Copyright (c) 2014 BruceZCQ. All rights reserved.
//

#import <CommonCrypto/CommonCrypto.h>
#import "NSString+Utils.h"
#import "AESCrypt.h"

#define kUserPasswordLocalStorePassword @"1123123"

@implementation NSString (Utils)

- (NSString *)md5
{
    const char *cdata = [self UTF8String];
    
    CC_LONG len = (CC_LONG)self.length;
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cdata, len, result);
    
    NSMutableString *md5Password = @"".mutableCopy;
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [md5Password appendFormat:@"%02x",result[i]];
    }
    return md5Password;
}

- (NSString *)encryptAES
{
    return [AESCrypt encrypt:self password:kUserPasswordLocalStorePassword];
}

- (NSString *)decryptAES
{
    return [AESCrypt decrypt:self
                    password:kUserPasswordLocalStorePassword];
}

- (NSString *)concat:(NSString *)subString
{
    return [self stringByAppendingString:subString];
    //[NSString stringWithFormat:@"%@%@",self,subString];
}

- (NSString *)concat:(NSString *)subString
               times:(NSUInteger)times
{
    NSString *_subString= subString;
    // 已经 concat 一次,从1开始,1~(times-1)
    for (NSUInteger idx = 1; idx < times; idx++) {
        _subString = [_subString concat:subString];
    }
    return [self concat:_subString];
}

- (NSString *)concatBefore:(NSString *)subString
{
    return [NSString stringWithFormat:@"%@%@",subString,self];
}

- (BOOL)isEmpty
{
    return [self isEqualToString:@""];
}

- (NSNumber *)toLongLongNumber
{
    return [NSNumber numberWithLongLong:self.longLongValue];
}

- (NSNumber *)toUnsignedIntNumber
{
    return [NSNumber numberWithUnsignedInteger:self.integerValue];
}

- (NSNumber *)toIntNumber
{
    return [NSNumber numberWithInt:self.intValue];
}

- (NSNumber *)toFloatNumber
{
    return [NSNumber numberWithFloat:self.floatValue];
}

- (NSNumber *)toDoubleNumber
{
    return [NSNumber numberWithDouble:self.doubleValue];
}

- (NSURL *)toNSURL
{
    return [NSURL URLWithString:self];
}

- (NSDate *)toUnix1970Date
{
    return [NSDate dateWithTimeIntervalSince1970:self.toLongLongNumber.unsignedLongLongValue];
}

- (NSString *)stringByTrimingWhitespace
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+ (NSString *)extendArray:(NSArray *)array
{
    if (array == nil || array.count == 0) {
        return @"";
    }
    
    NSMutableString *retString = [NSMutableString string];
    for (NSString *item in array) {
        [retString appendString:item];
    }
    return retString;
}

+ (NSString *)unixtimeSince1970
{
    return [NSString stringWithFormat:@"%.0lf",[[NSDate date] timeIntervalSince1970]];
}

@end
