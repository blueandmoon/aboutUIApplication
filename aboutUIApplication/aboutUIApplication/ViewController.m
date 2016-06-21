//
//  ViewController.m
//  aboutUIApplication
//
//  Created by 李根 on 16/6/21.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, assign)NSInteger applicationIconBadgeNumber;
//@property(nonatomic, getter=isNetworkActivityIndicatorVisible)BOOL networkActivityIndicatorVisible;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    //  UIApplication对象是应用程序的象征, 一个UIApplication对象就代表一个应用程序;
    //  可以通过[UIApplication sharedApplication]获得这个单例对象
    //  一个iOS程序启动后创建的第一个对象就是UIApplication, 且只有一个(打印可以看出地址是一样的)
    //  利用UIApplication对象, 能进行一些应用级别的操作
    
    //  设置应用程序右上角的红色提醒数字
    
    //  创建并添加一个按钮
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 60, 30)];
    [self.view addSubview:btn];
    [btn setTitle:@"click" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor brownColor]];
    [btn addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    
    
    
    
    
}

- (void)onClick {
    NSLog(@"点击");
    
#pragma mark    - 设置应用程序右上角提示信息
    UIApplication *app = [UIApplication sharedApplication];
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeBadge) categories:nil];
    [app registerUserNotificationSettings:settings];
    app.applicationIconBadgeNumber = 3;
    
#pragma mark    - 设置联网指示器
    app.networkActivityIndicatorVisible = YES;

    [app setStatusBarStyle:UIStatusBarStyleDefault animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


































@end
