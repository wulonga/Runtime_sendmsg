//
//  NSObject+AdapterViewController.h
//  兼容系统API迭代的新方案
//
//  Created by mac on 2018/7/24.
//  Copyright © 2018年 Gooou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSObject (AdapterViewController)
-(UIViewController*)cm_topmostViewController;
@end
