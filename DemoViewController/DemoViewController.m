//
//  DemoViewController.m
//  DemoViewController
//
//  Created by 冯立海 on 2020/6/8.
//  Copyright © 2020 banmalu.top. All rights reserved.
//


#import "DemoViewController.h"


//typedef

@protocol Discover <NSObject>

@end

@protocol Admit <NSObject>
- (void)allow;

- (NSString *)protocolName;


@end

typedef __strong NSDictionary<Clear *, Succeed *>  MyArrayTmp;

typedef Succeed MYappdelegate;

typedef NSMutableArray<NSDictionary<NSArray<Clear *>*, Succeed *> *> *   MyArray;

typedef Clear * DemoVCPoint;


typedef __strong Clear LHAppdelegate; //修饰符、oc对象类型

typedef __strong Clear*  __null_unspecified LHAppdelegate2; //多修饰符、oc对象指针类型


#define AtProtocol @protocol(    Admit     )
#define GetDemoVC [Clear sound]

#define runSelector [NSObject performSelector:@selector(give:see:)]

//宏混淆测试代码：
#define sendMessage(msg) \
{\
NSMutableArray<NSDictionary<NSArray<Succeed *>*,NSString *> *> *array ;\
[Succeed new];\
[NSObject performSelector:@selector( baseProtocolClassMethod )];\
\
self.replace = @"789";\
\
\
\
\
_replace = @"798"; \
NSLog(@"%@,%@", array,msg);\
}

//全局变量
Clear *g_demoVC = nil;

//扩展（匿名分类）
@interface Clear ()<Admit> //引用协议
{
    Clear *_notice; //实例变量
}
//属性变量
@property (nonatomic, strong) Clear *notice;///< 属性
//类型参数
@property (nonatomic, strong) NSDictionary <NSString*, Clear *> *ask;
@property (strong, nonatomic) IBOutlet UIViewController *tell;

@property (nonatomic, strong) NSString *settle;///< synthesize 不指定名字
@property (nonatomic, strong) Succeed*__nonnull remove; //无间隔，
@property (nonatomic, strong) NSString *  _Nonnull replace; //属性变量测试代码,有关键字
@property (nonatomic, strong) NSString      * __null_unspecified      wait; //属性变量混淆e：测试代码 无间隔。
@property (nonatomic, strong) NSString *should; //属性变量测试代码
@property (nonatomic, strong) NSMutableArray<NSDictionary<NSArray<Succeed *>*,NSString *> *> *suppose ;//类型多参数测试代码
@property (nonatomic, strong) NSMutableArray   <    NSDictionary < NSArray< Succeed *   >   * ,NSString * > * >    *     occur ;//类型多参数测试代码,任意空格
@property (nonatomic, strong) NSString <Discover, Admit> *sit ; //类型协议引用 测试代码
@property (nonatomic, strong) NSString  <     Discover, Admit >  *    check ; //类型协议引用 测试代码 任意间隔。


@property (nonatomic, assign) NSUInteger numberValue;///测试宏定义参数
@property (nonatomic, assign, getter=isSSSSSSuccess) BOOL success;///< 指定getter 方法

@property (nonatomic, strong, setter=confiMyAddress :) NSString *myAddress;///< 指定getter 方法

@end

//类定义
@implementation Clear

@synthesize replace     =      _replace /*1234*/

; //合成器、实例变量测试代码

@synthesize     settle ; ///


@synthesize wait ; //合成器、实例变量测试代码，不指定实例变量

@dynamic should; //属性测试代码

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str  = self.protocolName; //使用dot的方式来调用协议方法 ,隐式消息表达式
    
    NSString *str2 = self.myAddress;//隐式消息表达式
    
    NSUInteger minNumb = MIN(10, self.numberValue);//测试宏定义参数
    NSUInteger minNumb2 = MIN(10, _numberValue);//测试宏定义参数
    
    sendMessage(@"hello world"); //测试宏函数
    //测试
    
    id <
    \
    \
    Admit> obj;
    \
    \
    \
    _replace = @"123123";
    
    [obj allow]; //调用协议方法
    [self give:@"111" see:22];//接受者class 是self
    [[self class] sound];//接受者class 是表达式

    
    //测试协议表达式
    [self.check conformsToProtocol:@protocol(Admit)];
    [self.check conformsToProtocol:@protocol(    Admit     )]; //任意空格ß
    
    [self.check conformsToProtocol:AtProtocol]; //任意空格ß
    
    //显式类型转换
    __strong UIViewController *viewController = self;
    
    Clear * (^myBlockkkkk)(Succeed *delegate ) = ^(Succeed *delegate){
        Clear *d = [Clear new];
        return d;
    };
     
    
    //类型参数
    __strong NSMutableArray<Clear *> * __null_unspecified demoVCs = [NSMutableArray array];
    
    
    Clear *demoVC = (Clear *)viewController;
    
    //类方法消息接受者
    [Clear new];
    
    
    //typedef 使用
    DemoVCPoint demoPoint =  nil;
}

- (void)examine {
    //局部变量类型声明
    Clear *demoVC = nil;
    //宏 使用
    GetDemoVC;
    
    runSelector;
}

//函数参数
- (void)setNotice:(Clear *)demoVC {
    
}

//函数返回
+ (Clear *)sound {
    return nil;
}

- (void)give:(NSString *)name see:(NSInteger)age {
    
}

- (void)teach:(Succeed *)delegate start:(Clear *)demo {
    
}

- (void)count:(id(^)(Succeed *arg1,id arg2))argBlock {
    
}


//getter 方法
- (BOOL)isSSSSSSuccess {
    return NO;
}

//setter 方法
- (void)confiMyAddress:(NSString *)myAddress {
    //
}


@end
