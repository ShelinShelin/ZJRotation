//
//  PresentViewController.m
//  ZJDemo
//
//  Created by Mr.Zhang on 2017/3/2.
//  Copyright © 2017年 Mr.Zhang. All rights reserved.
//

#import "PresentViewController.h"
#import "PresentPushViewController.h"
@interface PresentViewController (){
    BOOL _shouldAutorotate;
}

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"继承BaseNav的试图并且强制横屏";
    
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
    [button1 setTitle:@"present继承BaseNav的试图并强制横屏" forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:12];
    [button1 addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];

}

#pragma mark - dismissVC
-(void)dismissVC {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - push
-(void)push {
    
    PresentPushViewController *vc = [[PresentPushViewController alloc]init];
    BaseNavViewController *nav = [[BaseNavViewController alloc]initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}
#pragma mark - 屏幕旋转
- (BOOL)shouldAutorotate {
    return _shouldAutorotate;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeRight;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if (_shouldAutorotate) {
        return UIInterfaceOrientationMaskAll;
    }
    else {
        
        return UIInterfaceOrientationMaskLandscapeRight;
    }
}

/*iOS8以上，旋转控制器后会调用*/
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    NSLog(@"%s", __func__);
//    _button.center = CGPointMake(size.width / 2.f - _button.bounds.size.width / 2.f, size.height / 2.f - _button.bounds.size.height / 2.f);
}

/*iOS8以下，旋转控制器后会调用*/
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    NSLog(@"%s", __func__);
//    if (toInterfaceOrientation == UIInterfaceOrientationPortrait) {
//        _button.center = self.view.center;
//    }
//    else {
//        _button.center = CGPointMake(self.view.bounds.size.width / 2.f - _button.bounds.size.width / 2.f, self.view.bounds.size.height / 2.f - _button.bounds.size.height / 2.f);
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
