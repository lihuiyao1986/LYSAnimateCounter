//
//  UIButton+LYSAnimateCounter.m
//  LYSAnimateCounter
//
//  Created by jk on 2017/4/26.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "UIButton+LYSAnimateCounter.h"
#import <objc/runtime.h>

@implementation UIButton (LYSAnimateCounter)

- (void)lys_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration format:(NSString*(^)(CGFloat number))format
{
    [self lys_fromNumber:numberA toNumber:numberB duration:duration animationOptions:LYSAnimateCounterAnimationOptionCurveEaseInOut format:format completion:nil];
}

- (void)lys_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration format:(NSString*(^)(CGFloat number))format completion:(void(^)())completion
{
    [self lys_fromNumber:numberA toNumber:numberB duration:duration animationOptions:LYSAnimateCounterAnimationOptionCurveEaseInOut format:format completion:completion];
}

- (void)lys_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormat:(NSAttributedString*(^)(CGFloat number))attributedFormat
{
    
    [self lys_fromNumber:numberA toNumber:numberB duration:duration animationOptions:LYSAnimateCounterAnimationOptionCurveEaseInOut attributedFormat:attributedFormat completion:nil];
}

- (void)lys_fromNumber:(CGFloat)numberA toNumber:(CGFloat)numberB duration:(CFTimeInterval)duration attributedFormat:(NSAttributedString*(^)(CGFloat number))attributedFormat completion:(void(^)())completion
{
    [self lys_fromNumber:numberA toNumber:numberB duration:duration animationOptions:LYSAnimateCounterAnimationOptionCurveEaseInOut attributedFormat:attributedFormat completion:completion];
}

#pragma mark - normal font
- (void)lys_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     animationOptions:(LYSAnimateCounterAnimationOptions)animationOptions
               format:(NSString*(^)(CGFloat number))format
           completion:(void(^)())completion
{
    if (!animationOptions) {
        animationOptions = LYSAnimateCounterAnimationOptionCurveLinear;
    }
    __weak typeof (self)MyWeakSelf = self;
    [[LYSAnimateCounter counter] fromNumber:numberA toNumber:numberB durationTime:duration animationOptions:animationOptions currentNumber:^(CGFloat number) {
        format ? [MyWeakSelf setTitle:format(number) forState:UIControlStateNormal] : nil ;
    } completion:completion];
    
}

#pragma mark - attributed font
- (void)lys_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     animationOptions:(LYSAnimateCounterAnimationOptions)animationOptions
     attributedFormat:(NSAttributedString*(^)(CGFloat number))attributedFormat
           completion:(void(^)())completion
{
    if (!animationOptions) {
        animationOptions = LYSAnimateCounterAnimationOptionCurveLinear;
    }
    __weak typeof (self)MyWeakSelf = self;
    [[LYSAnimateCounter counter] fromNumber:numberA toNumber:numberB durationTime:duration animationOptions:animationOptions currentNumber:^(CGFloat number) {
         attributedFormat ? [MyWeakSelf setAttributedTitle:attributedFormat(number) forState:UIControlStateNormal] : nil ;
    } completion:completion];
}

@end
