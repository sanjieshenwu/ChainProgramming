//
//  CaculateMaker.m
//  ChainProgramming
//
//  Created by stlink on 2019/1/9.
//  Copyright © 2019 GR. All rights reserved.
//

#import "CaculateMaker.h"

@implementation CaculateMaker

+ (CGFloat)caculate:(void(^)(CaculateMaker *))block
{
    CaculateMaker *maker = [[CaculateMaker alloc] init];
    block(maker);
    return maker.result;
}

- (CaculateMaker *(^)(CGFloat num))add
{
    return ^(CGFloat num) {
        self.result += num;
        return self;
    };
}

- (CaculateMaker *(^)(CGFloat num))sub
{
    return ^(CGFloat num) {
        self.result -= num;
        return self;
    };
}
- (CaculateMaker *(^)(CGFloat num))mul
{
    return ^(CGFloat num) {
        self.result *= num;
        return self;
    };
}
- (CaculateMaker *(^)(CGFloat num))div
{
    return ^(CGFloat num) {
        self.result /= num;
        return self;
    };
}

@end
