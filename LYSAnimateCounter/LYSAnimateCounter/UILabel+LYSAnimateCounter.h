//
//  UILabel+LYSAnimateCounter.h
//  LYSAnimateCounter
//
//  Created by jk on 2017/4/26.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LYSAnimateCounter.h"

@interface UILabel (LYSAnimateCounter)


/**
 正常字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 
 @param numberA     开始的数字
 @param numberB     结束的数字
 @param duration    持续时间
 @param format      设置字体一般属性的Block
 */
- (void)lys_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
               format:(NSString*(^)(CGFloat number))format;

/**
 1.正常字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 2.有结束回调
 
 @param numberA    开始的数字
 @param numberB    结束的数字
 @param duration   持续时间
 @param format     设置一般字体的Block
 @param completion 完成的Block
 */
- (void)lys_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
               format:(NSString *(^)(CGFloat number))format
           completion:(void(^)())completion;

/**
 1.正常字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 2.可设置动画类型,
 3.有结束回调
 
 @param numberA             开始的数字
 @param numberB             结束的数字
 @param duration            持续时间
 @param animationOptions    动画类型
 @param format              设置字体一般属性的block
 @param completion          完成的block
 */
- (void)lys_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     animationOptions:(LYSAnimateCounterAnimationOptions)animationOptions
               format:(NSString *(^)(CGFloat number))format
           completion:(void(^)())completion;


#pragma mark - attributed

/**
 富文本字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 
 @param numberA               开始的数字
 @param numberB               结束的数字
 @param duration              持续时间
 @param attributedFormat 设置富文本字体属性的Block
 */
- (void)lys_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     attributedFormat:(NSAttributedString *(^)(CGFloat number))attributedFormat;

/**
 1.富文本字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 2.有结束回调
 
 @param numberA          开始的数字
 @param numberB          结束的数字
 @param duration         持续时间
 @param attributedFormat 设置富文本字体属性的Block
 @param completion       完成的Block
 */
- (void)lys_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     attributedFormat:(NSAttributedString *(^)(CGFloat number))attributedFormat
           completion:(void(^)())completion;

/**
 1.富文本字体属性UILabel中的数字在指定时间从 numberA -> numberB,
 2.可设置动画类型,
 3.有结束回调
 
 @param numberA            开始的数字
 @param numberB            结束的数字
 @param duration           持续时间
 @param animationOptions   动画类型
 @param attributedFormat   设置富文本字体属性的Block
 @param completion         完成的Block
 */
- (void)lys_fromNumber:(CGFloat)numberA
             toNumber:(CGFloat)numberB
             duration:(CFTimeInterval)duration
     animationOptions:(LYSAnimateCounterAnimationOptions)animationOptions
     attributedFormat:(NSAttributedString *(^)(CGFloat number))attributedFormat
           completion:(void(^)())completion;

@end
