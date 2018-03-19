//
//  XLLoginView.m
//  XLMVCDemo
//
//  Created by 王小林 on 2018/3/15.
//  Copyright © 2018年 王小林. All rights reserved.
//

#import "XLLoginView.h"
@interface XLLoginView()
@property (nonatomic,strong) UITextField *accountTextField;
@property (nonatomic,strong) UITextField *pwdTextField;
@end
@implementation XLLoginView
//初始化
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}
//创建界面
- (void)initUI
{
    self.backgroundColor = [UIColor whiteColor];
    self.accountTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
    self.accountTextField.center = CGPointMake(self.center.x, 100);
    self.accountTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.accountTextField.placeholder = @"请输入用户名";
    
    self.pwdTextField = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, 200, 44)];
    self.pwdTextField.center = CGPointMake(self.center.x, 160);
    self.pwdTextField.secureTextEntry = YES;
    self.pwdTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.pwdTextField.placeholder = @"请输入密码";
    
    [self addSubview:self.accountTextField];
    [self addSubview:self.pwdTextField];
    
    UIButton *loginBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 60)];
    loginBtn.center = CGPointMake(self.center.x, 220);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(loginClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:loginBtn];
}
//按钮点击
-(void)loginClick{
    [self endEditing:YES];
    
    if (self.loginHandler) {
        self.loginHandler(self.accountTextField.text,self.pwdTextField.text);
    }
}
@end
