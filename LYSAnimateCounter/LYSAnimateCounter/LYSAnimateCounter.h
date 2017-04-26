//
//  LYSAnimateCounter.h
//  LYSAnimateCounter
//
//  Created by jk on 2017/4/26.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, LYSAnimateCounterAnimationOptions) {
    /** 由慢到快,再由快到慢*/
    LYSAnimateCounterAnimationOptionCurveEaseInOut = 1,
    /** 由慢到快*/
    LYSAnimateCounterAnimationOptionCurveEaseIn,
    /** 由快到慢*/
    LYSAnimateCounterAnimationOptionCurveEaseOut,
    /** 匀速*/
    LYSAnimateCounterAnimationOptionCurveLinear
};

@interface LYSAnimateCounter : NSObject

+(instancetype)counter;


/**
 在指定时间内数字从 numberA -> numberB
 
 @param starNumer           开始的数字
 @param endNumber           结束的数字
 @param durationTime            指定的时间
 @param animationOptions    动画类型
 @param currentNumber  当前数字的回调
 @param completion          已完成的回调
 */
- (void)fromNumber:(CGFloat)starNumer
          toNumber:(CGFloat)endNumber
          durationTime:(CFTimeInterval)durationTime
  animationOptions:(LYSAnimateCounterAnimationOptions)animationOptions
     currentNumber:(void(^)(CGFloat number))currentNumber
        completion:(void(^)())completion;

@end
