//
//  NSObject+CrashLogHandle.m
//  消息转发
//
//  Created by mac on 2018/7/24.
//  Copyright © 2018年 Gooou. All rights reserved.
//

#import "NSObject+CrashLogHandle.h"

@implementation NSObject (CrashLogHandle)
-(NSMethodSignature*)methodSignatureForSelector:(SEL)aSelector
{
    return [NSMethodSignature signatureWithObjCTypes:"v@:@"];//v代表返回值void，@代表self的id类型，：代表_cmd的类型sel
}
-(void)forwardInvocation:(NSInvocation *)anInvocation
{
    NSLog(@"NSObject+CrashLogHandle---在类:%@中 未实现该方法:%@",NSStringFromClass([anInvocation.target class]),NSStringFromSelector(anInvocation.selector));
}
@end


























