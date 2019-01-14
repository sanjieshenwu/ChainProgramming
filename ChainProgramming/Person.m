//
//  Person.m
//  ChainProgramming
//
//  Created by stlink on 2019/1/8.
//  Copyright © 2019 GR. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat1
{
    NSLog(@"%s",__FUNCTION__);
}
- (void)sleep1
{
    NSLog(@"%s",__FUNCTION__);
}

- (Person *)eat2
{
    NSLog(@"%s",__FUNCTION__);
    return self;
}
- (Person *)sleep2
{
    NSLog(@"%s",__FUNCTION__);
    return self;
}

- (void (^)(void))eat3
{
    //定义block
    void (^eat3Block)(void) = ^ {
        NSLog(@"%s",__FUNCTION__);
    };
    return eat3Block;
}
- (void (^)(void))sleep3
{
    return ^ {
        NSLog(@"%s",__FUNCTION__);
    };;
}

- (Person *(^)(void))eat4
{
    Person *(^eat4Block)(void) = ^(void) {
        NSLog(@"%s",__FUNCTION__);
        return self;
    };
    return eat4Block;
}

- (Person *(^)(void))sleep4
{
    return ^ {
        NSLog(@"%s",__FUNCTION__);
        return self;
    };
}

- (Person *(^)(NSString *))eat5
{
    Person *(^eat5Block)(NSString *) = ^(NSString *foodName) {
        NSLog(@"吃: %@",foodName);
        return self;
    };
    return eat5Block;
}

- (Person *(^)(NSInteger))sleep5
{
    return ^(NSInteger hour) {
        NSLog(@"睡了%ld小时",(long)hour);
        return self;
    };
}

@end
