//
//  CBCurrencyTermsClass.m
//  CoolBit
//
//  Created by iOS-Dev03 on 2018/4/8.
//  Copyright © 2018年 CoolBit. All rights reserved.
//

#import "CBCurrencyTermsClass.h"

@implementation CBCurrencyTermsClass

+ (NSDecimalNumber *)addAddend:(NSString *)addend augend:(NSString *)augend {
    
    if (![CBCurrencyTermsClass checkIsEmptyParameter:addend byParameters:augend]) {
        return [[NSDecimalNumber alloc] initWithString:@"0"];
    }
    
    NSDecimalNumber *tempOne = [NSDecimalNumber decimalNumberWithString:addend];
    
    NSDecimalNumber *tempTwo = [NSDecimalNumber decimalNumberWithString:augend];
    
    //加法运算函数  decimalNumberByAdding
    NSDecimalNumber *sum = [tempOne decimalNumberByAdding:tempTwo];
    
    return sum;
    
}

+ (NSDecimalNumber *)subtractionReduction:(NSString *)reduction minuend:(NSString *)minuend {
    
    if (![CBCurrencyTermsClass checkIsEmptyParameter:reduction byParameters:minuend]) {
        return [[NSDecimalNumber alloc] initWithString:@"0"];
    }
    
    NSDecimalNumber *tempOne = [NSDecimalNumber decimalNumberWithString:reduction];
    
    NSDecimalNumber *tempTwo = [NSDecimalNumber decimalNumberWithString:minuend];
    
    
    //减法运算函数  decimalNumberByAdding
    NSDecimalNumber *results = [tempOne decimalNumberBySubtracting:tempTwo];
    
    return results;
    
}

+ (NSDecimalNumber *)multiplicationMultiplier:(NSString *)reduction multiplicand:(NSString *)multiplicand {
    
    if (![CBCurrencyTermsClass checkIsEmptyParameter:reduction byParameters:multiplicand]) {
        return [[NSDecimalNumber alloc] initWithString:@"0"];
    }
    
    NSDecimalNumber *tempOne = [NSDecimalNumber decimalNumberWithString:reduction];
    
    NSDecimalNumber *tempTwo = [NSDecimalNumber decimalNumberWithString:multiplicand];
    
    
    //乘法运算函数  decimalNumberByAdding
    NSDecimalNumber *results = [tempOne decimalNumberByMultiplyingBy:tempTwo];
    
    return results;
    
}

+ (NSDecimalNumber *)divisionDivisor:(NSString *)divisor dividend:(NSString *)dividend {
    if (![CBCurrencyTermsClass checkIsEmptyParameter:divisor byParameters:dividend]) {
        return [[NSDecimalNumber alloc] initWithString:@"0"];
    }
    
    NSDecimalNumber *tempOne = [NSDecimalNumber decimalNumberWithString:divisor];
    
    NSDecimalNumber *tempTwo = [NSDecimalNumber decimalNumberWithString:dividend];
    
    
    //除法运算函数  decimalNumberByAdding
    NSDecimalNumber *results = [tempOne decimalNumberByDividingBy:tempTwo];
    
    return results;
    
}


/**
 NSRoundDown    //  只舍不入
 **/

+ (NSString *)roundDown:(NSDecimalNumber *)price afterPoint:(NSInteger)position
{
    
    if (price == nil) {
        return @"0";
    }
    
    NSDecimalNumberHandler* roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:position raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    
    NSDecimalNumber *roundedOunces;
    
    roundedOunces = [price decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    
    return [NSString stringWithFormat:@"%@",roundedOunces];
    
}

/**
 NSRoundUp,     //  只入不舍
 **/
+ (NSString *)roundUp:(NSDecimalNumber *)price afterPoint:(NSInteger)position
{
    
    if (price == nil) {
        return @"0";
    }
    
    NSDecimalNumberHandler* roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundUp scale:position raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    
    NSDecimalNumber *roundedOunces;
    
    roundedOunces = [price decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    
    return [NSString stringWithFormat:@"%@",roundedOunces];
    
}


/**
 NSRoundBankers //  四舍五入
 **/
+ (NSString *)roundBankers:(NSDecimalNumber *)price afterPoint:(NSInteger)position
{
    
    if (price == nil) {
        return @"0";
    }
    
    NSDecimalNumberHandler* roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundBankers scale:position raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    
    NSDecimalNumber *roundedOunces;
    
    roundedOunces = [price decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    
    return [NSString stringWithFormat:@"%@",roundedOunces];
    
}


#pragma mark- 判断是否为空
+ (BOOL)checkIsEmptyParameter:(NSString *)parameter byParameters:(NSString *)byParameters {
    
    if ([parameter isEqualToString:@""] || parameter == nil) {
        return NO;
    }
    
    if ([byParameters isEqualToString:@""] || byParameters == nil) {
        return NO;
    }
    
    return YES;
    
}

@end
