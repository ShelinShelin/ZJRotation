//
//  PresentPush2ViewController.m
//  ZJDemo
//
//  Created by Mr.Zhang on 2017/3/2.
//  Copyright © 2017年 Mr.Zhang. All rights reserved.
//

#import "PresentPush2ViewController.h"
#import "Present3ViewController.h"
@interface PresentPush2ViewController ()

@end

@implementation PresentPush2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"pushVC";
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, 180, WIDTH, 100);
    button1.backgroundColor = [UIColor blueColor];
    [button1 setTitle:@"present不继承BaseNav的试图" forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:12];
    [button1 addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

-(void)present{
    
    Present3ViewController *vc = [[Present3ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
    
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
