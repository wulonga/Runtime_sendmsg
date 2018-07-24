//
//  ViewController.m
//  消息转发
//
//  Created by mac on 2018/7/24.
//  Copyright © 2018年 Gooou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"ViewwController";
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(50, 100, 200, 100);
    button.backgroundColor=[UIColor blueColor];
    [button setTitle:@"消息转发" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(doSomething) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


















