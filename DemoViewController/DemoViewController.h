//
//  DemoViewController.h
//  DemoViewController
//
//  Created by 冯立海 on 2020/6/8.
//  Copyright © 2020 banmalu.top. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


NS_ASSUME_NONNULL_BEGIN

//类声明
@interface Clear : UIViewController

//类的属性混淆测试
@property (class,nonatomic, strong) NSString *sound; //class 关键字的属性
@property (nonatomic, strong) NSString *cry; //类的属性变量混淆
@property (nonatomic, strong) NSMutableArray<NSDictionary<NSArray<Succeed *>*,NSString *> *> *study ;//类型多参数测试代码


- (void)give:(NSString *)name see:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
