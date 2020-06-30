//
//  DemoViewController.m
//  DemoViewController
//
//  Created by 冯立海 on 2020/6/8.
//  Copyright © 2020 banmalu.top. All rights reserved.
//


#import "DemoViewController.h"

//typedef
typedef DemoViewController * DemoVCPoint;

#define GetDemoVC [DemoViewController getDemoVC]

#define runSelector [NSObject performSelector:@selector( get :  age:)]

//全局变量
DemoViewController *g_demoVC = nil;

//扩展（匿名分类）
@interface DemoViewController ()
{
    DemoViewController *_demoVC; //实例变量
}
//属性变量
@property (nonatomic, strong) DemoViewController *demoVC;///< 属性
//类型参数
@property (nonatomic, strong) NSDictionary <NSString*, DemoViewController *> *demoDict;
@property (strong, nonatomic) IBOutlet UIViewController *xibDemoVC;

@end

//类定义
@implementation DemoViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //显式类型转换
    UIViewController *viewController = self;
    DemoViewController *demoVC = (DemoViewController *)viewController;
    
    //类型参数
    NSMutableArray<DemoViewController *> *demoVCs = [NSMutableArray array];
    
    //类方法消息接受者
    [DemoViewController new];
    
    
    //typedef 使用
    DemoVCPoint demoPoint =  nil;
}

- (void)test {
    //局部变量类型声明
    DemoViewController *demoVC = nil;
    //宏 使用
    GetDemoVC;
    
    runSelector;
}

//函数参数
- (void)setDemoVC:(DemoViewController *)demoVC {
    
}

//函数返回
+ (DemoViewController *)getDemoVC {
    return nil;
}

- (void)get:(NSString *)name age:(NSInteger)age {
    
}


@end
