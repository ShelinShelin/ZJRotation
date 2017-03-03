//
//  NormalViewController.m
//  ZJDemo
//
//  Created by Mr.Zhang on 2017/3/3.
//  Copyright © 2017年 Mr.Zhang. All rights reserved.
//

#import "NormalViewController.h"
#import "Normal2ViewController.h"
@interface NormalViewController ()

@end

@implementation NormalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"横竖屏切换";
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, 64, WIDTH, 100);
    button1.backgroundColor = [UIColor blueColor];
    [button1 setTitle:@"push" forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:12];
    [button1 addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
}

#pragma mark - push
-(void)push {
    
    Normal2ViewController *vc = [[Normal2ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
