//
//  MyViewController.m
//  DemoViewController
//
//  Created by 冯立海 on 2020/9/22.
//  Copyright © 2020 banmalu.top. All rights reserved.
//

#import "MyViewController.h"
#import "AppDelegate.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation MyViewController
- (IBAction)touchUpInside:(id)sender {
}
- (IBAction)touchDown:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    Succeed *appdelegate = (Succeed *)[UIApplication sharedApplication].delegate;
    [appdelegate test];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dragInside:(id)sender {
}
@end
