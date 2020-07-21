//
//  DemoViewController.m
//  DemoViewController
//
//  Created by 冯立海 on 2020/6/8.
//  Copyright © 2020 banmalu.top. All rights reserved.
//


#import "DemoViewController.h"


//typedef

@protocol TestProtocol2 <NSObject>

@end

@protocol TestProtocol <NSObject>



@end

typedef __strong NSDictionary<DemoViewController *, AppDelegate *>  MyArrayTmp;

typedef AppDelegate MYappdelegate;

typedef NSMutableArray<NSDictionary<NSArray<DemoViewController *>*, AppDelegate *> *> *   MyArray;

typedef DemoViewController * DemoVCPoint;


typedef __strong DemoViewController LHAppdelegate; //修饰符、oc对象类型

typedef __strong DemoViewController*  __null_unspecified LHAppdelegate2; //多修饰符、oc对象指针类型


#define AtProtocol @protocol(    TestProtocol     )
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

@property (nonatomic, strong) NSString *testName;///< synthesize 不指定名字
@property (nonatomic, strong) AppDelegate*__nonnull delegate; //无间隔，
@property (nonatomic, strong) NSString *  _Nonnull name; //属性变量测试代码,有关键字
@property (nonatomic, strong) NSString      * __null_unspecified      sex; //属性变量混淆e：测试代码 无间隔。
@property (nonatomic, strong) NSString *age; //属性变量测试代码
@property (nonatomic, strong) NSMutableArray<NSDictionary<NSArray<AppDelegate *>*,NSString *> *> *array ;//类型多参数测试代码
@property (nonatomic, strong) NSMutableArray   <    NSDictionary < NSArray< AppDelegate *   >   * ,NSString * > * >    *     testArray2 ;//类型多参数测试代码,任意空格
@property (nonatomic, strong) NSString <TestProtocol2, TestProtocol> *testP ; //类型协议引用 测试代码
@property (nonatomic, strong) NSString  <     TestProtocol2, TestProtocol >  *    testP2 ; //类型协议引用 测试代码 任意间隔。

@end

//类定义
@implementation DemoViewController

@synthesize name     =      __name /*1234*/

; //合成器、实例变量测试代码

@synthesize     testName ; ///


@synthesize sex ; //合成器、实例变量测试代码，不指定实例变量

@dynamic age; //属性测试代码

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //测试
    [self get:@"111" age:22];//接受者class 是self
    [[self class] getDemoVC];//接受者class 是表达式
    
    //测试协议表达式
    [self.testP2 conformsToProtocol:@protocol(TestProtocol)];
    [self.testP2 conformsToProtocol:@protocol(    TestProtocol     )]; //任意空格ß
    
    [self.testP2 conformsToProtocol:AtProtocol]; //任意空格ß
    
    //显式类型转换
    __strong UIViewController *viewController = self;
    
    DemoViewController * (^myBlockkkkk)(AppDelegate *delegate ) = ^(AppDelegate *delegate){
        DemoViewController *d = [DemoViewController new];
        return d;
    };
     
    
    //类型参数
    __strong NSMutableArray<DemoViewController *> * __null_unspecified demoVCs = [NSMutableArray array];
    
    
    DemoViewController *demoVC = (DemoViewController *)viewController;
    
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

- (void)testaaaa:(AppDelegate *)delegate demo:(DemoViewController *)demo {
    
}

- (void)testBBBBBBBBB:(id(^)(AppDelegate *arg1,id arg2))argBlock {
    
}




@end
