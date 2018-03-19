//
//  XLLoginView.h
//  XLMVCDemo
//
//  Created by 王小林 on 2018/3/15.
//  Copyright © 2018年 王小林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XLLoginView : UIView

//按钮点击的回调
@property (nonatomic,copy) void (^loginHandler)(NSString *account,NSString *pwd);

@end
