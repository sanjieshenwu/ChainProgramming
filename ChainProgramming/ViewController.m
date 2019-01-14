//
//  ViewController.m
//  ChainProgramming
//
//  Created by stlink on 2019/1/8.
//  Copyright © 2019 GR. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "UIView+ZYLExtension.h"
#import "CaculateMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] init];
    [person eat1];
    [person sleep1];
    
    [[person eat2] sleep2];
    [[person sleep2] eat2];
    
    person.eat3();
    person.sleep3();
    
    person.eat4().sleep4();
    person.sleep4().eat4();
    
    person.eat5(@"蛋糕").sleep5(8);
    person.sleep5(8).eat5(@"面包");
    
    UIView *view = UIView.alloc.init;
    view.setFrame(20, 30, 160, 200);
    view.setBackgroundColor(UIColor.redColor);
    [self.view addSubview:view];
    
    CGFloat result = [CaculateMaker caculate:^(CaculateMaker * _Nonnull maker) {
        maker.add(10).add(21).mul(10).div(2);
    }];
    NSLog(@"%f", result);
}


@end
