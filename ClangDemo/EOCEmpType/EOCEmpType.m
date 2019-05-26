//
//  EOCEmpType.m
//  ClangDemo
//
//  Created by rp.wang on 2018/6/6.
//  Copyright © 2018年 兰州北科维拓科技股份有限公司. All rights reserved.
//

#import "EOCEmpType.h"

@implementation EOCEmpType

+ (void)initialize {
    NSLog(@"==========EOCEmpType new");
}

- (void)SetPushNewsData:(NSString *)NewsData {
    NSLog(@"=============%@",NewsData);
}

- (void)testdata {
    printf("===============EOCEmpType testdata");
}

@end
