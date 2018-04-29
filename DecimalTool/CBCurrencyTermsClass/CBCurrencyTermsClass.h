//
//  CBCurrencyTermsClass.h
//  CoolBit
//
//  Created by iOS-Dev03 on 2018/4/8.
//  Copyright © 2018年 CoolBit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBCurrencyTermsClass : NSObject

/**
 加法

 @param addend 加数
 @param augend 被加数
 @return 结果
 */
+ (NSDecimalNumber *)addAddend:(NSString *)addend augend:(NSString *)augend;

/**
 减法

 @param reduction 减数
 @param minuend 被减数
 @return 结果
 */
+ (NSDecimalNumber *)subtractionReduction:(NSString *)reduction minuend:(NSString *)minuend;

/**
 乘法

 @param reduction 乘数
 @param multiplicand 被乘数
 @return 结果
 */
+ (NSDecimalNumber *)multiplicationMultiplier:(NSString *)reduction multiplicand:(NSString *)multiplicand;

/**
 除法

 @param divisor 除数
 @param dividend 被除数
 @return 结果
 */
+ (NSDecimalNumber *)divisionDivisor:(NSString *)divisor dividend:(NSString *)dividend;

/**
 截取指定小数位的值

 @param price 需要转化的数据
 @param position 有效小数位
 @return 截取后数据
 */

/**
 NSRoundDown    //  只舍不入
 **/

+ (NSString *)roundDown:(NSDecimalNumber *)price afterPoint:(NSInteger)position;

/**
 NSRoundUp,     //  只入不舍
 **/
+ (NSString *)roundUp:(NSDecimalNumber *)price afterPoint:(NSInteger)position;

/**
 NSRoundBankers //  四舍五入
 **/
+ (NSString *)roundBankers:(NSDecimalNumber *)price afterPoint:(NSInteger)position;


@end
