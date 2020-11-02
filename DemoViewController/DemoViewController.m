//
//  DemoViewController.m
//  DemoViewController
//
//  Created by 冯立海 on 2020/6/8.
//  Copyright © 2020 banmalu.top. All rights reserved.
//


#import "DemoViewController.h"
#import "MyView.h"


#define metamacro_concat(A, B) A ## B



#define CallMethod(NAME, COUNT, PRODUCTID)\
{\
    int i = 0;\
    [self call  /*我是注释*/## NAME##Request:COUNT productId:PRODUCTID];\
    [self push  /*我是注释*/## NAME:COUNT productId:PRODUCTID];\
    [self push  ##   NAME:COUNT productId:PRODUCTID];\
    [self metamacro_concat(push, NAME):COUNT productId:PRODUCTID];\
    self.NAME=@"1234";\
}\




#define CallMethod2(NAME, COUNT, PRODUCTID)\
{\
    int i = 0;\
    [self metamacro_concat(push,NAME):COUNT productId:PRODUCTID];\
}\


#define COMMAND(NAME)  { #NAME, NAME ## _command }



//typedef

@protocol Discover <NSObject>

@end

@protocol Admit <NSObject>
- (void)allow;

- (void)lonyDefineMethod;

- (NSString *)protocolName;

- (void)testCallProtocolMethod;


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
[NSObject performSelector:@selector( lonyDefineMethod )];\
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
    
    Clear *___testmyNameA; //测试多下划线
    
    NSString *__name;
}
//属性变量
@property (nonatomic, strong) Clear *notice;///< 属性

@property (nonatomic, strong) NSString *POST;///< 测试宏定义中的串联
@property (nonatomic, strong) Clear *___testmyNameBB;///< 多下划线
//类型参数
@property (nonatomic, strong) NSDictionary <NSString*, Clear *> *ask;
@property (nonatomic, strong) NSString *settle;///< synthesize 指定名字abc
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@property (weak, nonatomic) IBOutlet UILabel *myTitleLabel;

@property (weak, nonatomic) IBOutlet MyView *myView;

@property (nonatomic, strong) NSString *gogogo;///< googog->__fenglh
@property (nonatomic, strong) Succeed*__nonnull remove; //无间隔，
@property (nonatomic, strong) NSString *  _Nonnull replace; //属性变量测试代码,有关键字
@property (nonatomic, strong) NSString      * __null_unspecified      wait; //属性变量混淆e：测试代码 无间隔。
@property (nonatomic, strong) NSString *should; //属性变量测试代码
@property (nonatomic, strong) NSMutableArray<NSDictionary<NSArray<Succeed *>*,NSString *> *> *suppose ;//类型多参数测试代码
@property (nonatomic, strong) NSMutableArray   <    NSDictionary < NSArray< Succeed *   >   * ,NSString * > * >    *     occur ;//类型多参数测试代码,任意空格
@property (nonatomic, strong) NSString <Discover, Admit> *sit ; //类型协议引用 测试代码
@property (nonatomic, strong) NSString  <     Discover, Admit >  *    check ; //类型协议引用 测试代码 任意间隔。
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;


@property (nonatomic, strong) NSString *name;///< 测试合成属性
@property (nonatomic, assign) NSUInteger numberValue;///测试宏定义参数
@property (nonatomic, assign, getter=isSSSSSSuccess) BOOL success;///< 指定getter 方法

@property (nonatomic, strong, setter=confiMyAddress:) NSString *myAddress;///< 指定getter 方法，myAddress->confiMyAddress

@property (nonatomic, strong) NSString *__naaaaaa;///
@end

//类定义
@implementation Clear

@synthesize replace     =      _replace /*1234*/

; //合成器、实例变量测试代码

@synthesize     settle = abc ; ///abc 合成名字没有斜划线

@synthesize gogogo = __fenglh; //googo-->__fenglh


@synthesize name     =      __name; /*1234*/

@synthesize wait ; //合成器、实例变量测试代码，不指定实例变量

@dynamic should; //属性测试代码
//setNumberValue
- (void)setNumberValue:(NSUInteger)numberValue {
    
}
//- (void)testCallProtocolMethod {
//    
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self testCallProtocolMethod];
    
    CallMethod(POST, 10, @"1111");
    CallMethod2(POST, 10, @"1111");

    
//    CallMethod2(callGETRequest, 10, @"1111");
    abc =@"000"; //abc
    self.name=@"000";__name=@"777";
    self.name = @"123"; //属性引用混淆测试代码
    __name = @"111"; //实例变量引用混淆测试代码

    NSString *myName1 = self.name; //属性引用测试代码
    NSString *myName2 = __name;//实例变量引用测试代码
    
    
    [self set___testmyNameBB:nil];
    
    ____testmyNameBB = nil;
    NSString *str0 = self.cry; //测试是否同时触发隐式消息表达式、propertyRefExpr
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

//setter 方法confiMyAddress
- (void)confiMyAddress:(NSString *)myAddress {
    //
}

//setter 测试代码
- (void)setName:(NSString *)name {
    __name = name;
}

//getter 测试代码
- (NSString *)name {
    if (__name == nil) {
        __name = @"libai";
    }
    return __name;
}
- (IBAction)touchUpIN:(id)sender {
}
- (IBAction)touchCancel:(id)sender {
}



//测试宏函数（宏串联函数）

- (void)callPOSTRequest:(NSInteger )count productId:(NSString *)productId {
    
}

- (void)callGETRequest:(NSInteger )count productId:(NSString *)productId{
    
}

- (void)pushPOST:(NSInteger )count productId:(NSString *)productId {
    
}
@end
