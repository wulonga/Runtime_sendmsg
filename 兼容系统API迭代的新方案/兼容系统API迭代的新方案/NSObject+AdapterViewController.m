//
//  NSObject+AdapterViewController.m
//  兼容系统API迭代的新方案
//
//  Created by mac on 2018/7/24.
//  Copyright © 2018年 Gooou. All rights reserved.
//

#import "NSObject+AdapterViewController.h"

@implementation NSObject (AdapterViewController)
/*返回最顶部的vc*/
-(UIViewController*)cm_topmostViewController
{
    UIViewController *resultVC;
    resultVC = [self cm_topViewController:[[UIApplication sharedApplication].keyWindow rootViewController]];
    while (resultVC.presentedViewController) {
        resultVC = [self cm_topViewController:resultVC.presentedViewController];
    }
    return resultVC;
}
-(UIViewController*)cm_topViewController:(UIViewController*)vc
{
    if ([vc isKindOfClass:[UINavigationController class]]) {
        return [self cm_topViewController:[(UINavigationController*)vc topViewController]];
    }else if([vc isKindOfClass:[UITabBarController class]]){
        return [self cm_topViewController:[(UITabBarController*)vc selectedViewController]];
    }else{
        return vc;
    }
}
@end
