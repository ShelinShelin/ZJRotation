//
//  PresentPushViewController.m
//  ZJDemo
//
//  Created by Mr.Zhang on 2017/3/2.
//  Copyright © 2017年 Mr.Zhang. All rights reserved.
//

#import "PresentPushViewController.h"
#import "PresentPush2ViewController.h"
@interface PresentPushViewController ()

@end

@implementation PresentPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"pushVC";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 64, WIDTH, 100);
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"Dismiss" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [button addTarget:self action:@selector(dismissVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, 180, WIDTH, 100);
    button1.backgroundColor = [UIColor blueColor];
    [button1 setTitle:@"push" forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:12];
    [button1 addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];

}
#pragma mark - dismissVC
-(void)dismissVC {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)push{
    
    [self.navigationController pushViewController:[PresentPush2ViewController new] animated:YES];
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
