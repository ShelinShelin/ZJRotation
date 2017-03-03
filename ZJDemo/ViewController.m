//
//  ViewController.m
//  ZJDemo
//
//  Created by Mr.Zhang on 2017/3/2.
//  Copyright © 2017年 Mr.Zhang. All rights reserved.
//

#import "ViewController.h"
#import "PresentViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"进入试图强制竖屏";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 64, WIDTH, 100);
    button.backgroundColor = [UIColor blueColor];
    [button setTitle:@"Present继承BaseNav的试图并且强制横屏" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [button addTarget:self action:@selector(presentToOtherVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
//    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    button2.frame = CGRectMake(0, 180, WIDTH, 100);
//    button2.backgroundColor = [UIColor blueColor];
//    [button2 setTitle:@"Present继承BaseNav的试图并且强制横屏" forState:UIControlStateNormal];
//    button2.titleLabel.font = [UIFont systemFontOfSize:12];
//    [button2 addTarget:self action:@selector(presentVC) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button2];
}

-(void)presentToOtherVC{
    
    PresentViewController *vc = [[PresentViewController alloc]init];
    BaseNavViewController *nav = [[BaseNavViewController alloc]initWithRootViewController:vc];
//    ZJAppDelegate.Rotate = YES;
//    ZJAppDelegate.type = RotationTypeTwo;
    [self presentViewController:nav animated:YES completion:nil];
}


//-(void)presentVC{
//    
//    
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
