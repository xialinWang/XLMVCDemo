//
//  UIAlertView+show.m
//  MVCDemo
//
//  Created by Scarecrow on 16/4/17.
//  Copyright © 2016年 XB. All rights reserved.
//

#import "UIAlertView+show.h"

@implementation UIAlertView(show)
+ (void)showAlertWithTitle:(NSString *)title
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alert show];
}

@end
