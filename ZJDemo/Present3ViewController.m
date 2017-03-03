//
//  Present3ViewController.m
//  ZJDemo
//
//  Created by Mr.Zhang on 2017/3/2.
//  Copyright © 2017年 Mr.Zhang. All rights reserved.
//

#import "Present3ViewController.h"

@interface Present3ViewController ()

@end

@implementation Present3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"不继承BaseNav的试图";
    // Do any additional setup after loading the view.
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(0, 64, WIDTH, 100);
    button1.backgroundColor = [UIColor blueColor];
    [button1 setTitle:@"dismissVC" forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:12];
    [button1 addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
}

-(void)dismiss{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
