//
//  ViewController.m
//  XLMVCDemo
//
//  Created by 王小林 on 2018/3/15.
//  Copyright © 2018年 王小林. All rights reserved.
//

#import "ViewController.h"
//导入view
#import "XLLoginView.h"
//导入info
#import "XLLoginInfo.h"
//导入工具类
#import "UIAlertView+show.h"
@interface ViewController ()

@property (nonatomic, strong)XLLoginInfo *myInfo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化视图
    [self initView];
    //初始化登录对象
    self.myInfo=[XLLoginInfo new];
}
//把视图添加到视图控制器
- (void)initView
{
    XLLoginView *loginView = [[XLLoginView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:loginView];
    
    //处理按钮的回调
    __weak typeof(self) ws = self;
    loginView.loginHandler = ^(NSString *account,NSString *pwd){
        ws.myInfo.account=account;
        ws.myInfo.password=pwd;
        
        [ws loginWithAccount];
    };
}

- (void)loginWithAccount
{
    if (!self.myInfo.account||[self.myInfo.account isEqualToString:@""]) {
        [UIAlertView showAlertWithTitle:@"姓名为空"];
        return;
    }
    if (!self.myInfo.password||[self.myInfo.password isEqualToString:@""]) {
        [UIAlertView showAlertWithTitle:@"密码为空"];
        return;
    }
    
    if ([self.myInfo.account isEqualToString:@"test"]&&[self.myInfo.password isEqualToString:@"123456"]) {
        [UIAlertView showAlertWithTitle:@"登录成功"];
    }else{
        [UIAlertView showAlertWithTitle:@"登录失败"];
    }
}


@end
