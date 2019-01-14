//
//  CaculateMaker.h
//  ChainProgramming
//
//  Created by stlink on 2019/1/9.
//  Copyright © 2019 GR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaculateMaker : NSObject

@property (nonatomic, assign) CGFloat result;

+ (CGFloat)caculate:(void(^)(CaculateMaker *maker))block;
/** 加 */
- (CaculateMaker *(^)(CGFloat num))add;
/** 减 */
- (CaculateMaker *(^)(CGFloat num))sub;
/** 乘 */
- (CaculateMaker *(^)(CGFloat num))mul;
/** 除 */
- (CaculateMaker *(^)(CGFloat num))div;

@end

NS_ASSUME_NONNULL_END
