//
//  UIView+ZYLExtension.h
//  ChainProgramming
//
//  Created by stlink on 2019/1/9.
//  Copyright © 2019 GR. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ZYLExtension)

- (UIView *(^)(CGFloat x, CGFloat y, CGFloat w, CGFloat h))setFrame;

- (UIView *(^)(UIColor* color))setBackgroundColor;

@end

NS_ASSUME_NONNULL_END
