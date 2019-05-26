//
//  ViewController.m
//  ClangDemo
//
//  Created by rp.wang on 2018/6/6.
//  Copyright © 2018年 兰州北科维拓科技股份有限公司. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#include "PointerTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSObject *empclass = [[NSClassFromString(@"EOCEmpType") alloc] init];
    SEL pushdata = NSSelectorFromString(@"SetPushNewsData:");

    if ([empclass respondsToSelector:pushdata]) {

        IMP aIMP = [empclass methodForSelector:pushdata];

        void (*setter)(id, SEL, NSString*) = (void(*)(id, SEL, NSString*))aIMP;

        setter(empclass, pushdata, @"测试测试");
    }
    
    // 指针
    pointer();
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
