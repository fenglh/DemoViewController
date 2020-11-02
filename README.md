# DemoViewController
- 用于“类名混淆”测试Demo，详见文章：www.banmalu.top/llvm-06/
- 用于[OCObfuscator App](http://www.banmalu.top/ocobfuscator/) 测试代码混淆效果使用的Demo ，

项目中使用了各种奇葩代码风格写的代码，以便于测试混淆中会出现的问题。

```
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
```

```
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
```
