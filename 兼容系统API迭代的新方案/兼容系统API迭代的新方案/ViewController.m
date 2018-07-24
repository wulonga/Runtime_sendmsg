//
//  ViewController.m
//  兼容系统API迭代的新方案
//
//  Created by mac on 2018/7/24.
//  Copyright © 2018年 Gooou. All rights reserved.
//
/*解决API新旧版本不兼容*/
#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title=@"ViewController";
    
    UITableView *tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 64, 375, 600) style:UITableViewStylePlain];
    tableView.delegate=self;
    tableView.backgroundColor=[UIColor orangeColor];
    tableView.contentInsetAdjustmentBehavior=UIScrollViewContentInsetAdjustmentNever;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    [self.view addSubview:tableView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
























