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




- (void)confiMyAddress:(NSString *)myAddress;//事先暴露属性的setter方法;confiMyAddress

- (NSUInteger)numberValue ;//先暴露属性getter方法，numberValue， interfacre 声明的属性
- (void)setNumberValue:(NSUInteger)numberValue;//先暴露属性setter方法， interfacre 声明的属性

//扩展中声明的属性，没有显示指定setter/getter名字
- (void)setNotice:(Clear *)demoVC;//测试代码，验证是否在.m文件中的属性名也会被改变
//扩展中的属性，指定getter名字
- (BOOL)isSSSSSSuccess ; //事先暴露属性的getter方法
@end

NS_ASSUME_NONNULL_END
