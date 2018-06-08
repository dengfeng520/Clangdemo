//
//  main.m
//  ClangDemo
//
//  Created by rp.wang on 2018/6/6.
//  Copyright © 2018年 兰州北科维拓科技股份有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>

@interface EOCEmpTypeClass : NSObject

- (void)first;
- (void)second;
@end
@implementation EOCEmpTypeClass
- (void)first {
    NSLog(@"first");
}
- (void)second {
    NSLog(@"second");
}
@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        EOCEmpTypeClass *empclass = [[EOCEmpTypeClass alloc] init];
        // 实例方法调用
        [empclass first];
        // 类方法调用
        [empclass second];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
