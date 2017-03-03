//
//  AppDelegate.h
//  ZJDemo
//
//  Created by Mr.Zhang on 2017/3/2.
//  Copyright © 2017年 Mr.Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum {
    RotationTypeDefault,
    RotationTypeOne,
    RotationTypeTwo
}RotationType;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, assign) BOOL Rotate;

@property (nonatomic, assign) RotationType type;
@end

