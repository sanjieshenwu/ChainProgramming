//
//  Person.h
//  ChainProgramming
//
//  Created by stlink on 2019/1/8.
//  Copyright © 2019 GR. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

- (void)eat1;
- (void)sleep1;

- (Person *)eat2;
- (Person *)sleep2;

- (void (^)(void))eat3;
- (void (^)(void))sleep3;

- (Person * (^)(void))eat4;
- (Person * (^)(void))sleep4;

- (Person * (^)(NSString *foodName))eat5;
- (Person * (^)(NSInteger hour))sleep5;

@end

NS_ASSUME_NONNULL_END
