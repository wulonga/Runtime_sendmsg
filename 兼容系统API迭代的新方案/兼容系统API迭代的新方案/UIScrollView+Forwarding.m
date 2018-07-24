//
//  UIScrollView+Forwarding.m
//  兼容系统API迭代的新方案
//
//  Created by mac on 2018/7/24.
//  Copyright © 2018年 Gooou. All rights reserved.
//

#import "UIScrollView+Forwarding.h"
#import "NSObject+AdapterViewController.h"

@implementation UIScrollView (Forwarding)
//返回方法签名
-(NSMethodSignature*)methodSignatureForSelector:(SEL)aSelector
{
    NSMethodSignature *signature=nil;
    if (aSelector==@selector(setContentInsetAdjustmentBehavior:)) {//主控制器中的adjust为不兼容API
        signature=[UIViewController instanceMethodSignatureForSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)];//更新API
    }else{
        signature=[super methodSignatureForSelector:aSelector];
    }
    return  signature;
}
-(void)forwardInvocation:(NSInvocation *)anInvocation{
    BOOL automaticicallyAdjustsScrollViewInsets=NO;
    UIViewController *topmostViewController=[self cm_topmostViewController];
    NSInvocation *viewControllerInvoation=[NSInvocation invocationWithMethodSignature:anInvocation.methodSignature];
    [viewControllerInvoation setTarget:topmostViewController];
    [viewControllerInvoation setSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)];
    [viewControllerInvoation setArgument:&automaticicallyAdjustsScrollViewInsets atIndex:2];
    [viewControllerInvoation invokeWithTarget:topmostViewController];//发送消息给接受者
}
@end





























