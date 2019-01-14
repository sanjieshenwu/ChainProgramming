//
//  UIView+ZYLExtension.m
//  ChainProgramming
//
//  Created by stlink on 2019/1/9.
//  Copyright © 2019 GR. All rights reserved.
//

#import "UIView+ZYLExtension.h"

@implementation UIView (ZYLExtension)

- (UIView *(^)(CGFloat x, CGFloat y, CGFloat w, CGFloat h))setFrame
{
    return ^(CGFloat x, CGFloat y, CGFloat w, CGFloat h) {
        self.frame = CGRectMake(x, y, w, h);
        return self;
    };
}

- (UIView *(^)(UIColor* color))setBackgroundColor
{
    return ^(UIColor* color) {
        self.backgroundColor = color;
        return self;
    };
}

@end
