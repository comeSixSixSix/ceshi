//
//  ViewController.m
//  绘图
//
//  Created by 赵鹏云 on 17/3/14.
//  Copyright © 2017年 Zpy. All rights reserved.
//

#import "ViewController.h"
//#import <CoreGraphics/CoreGraphics.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    for (int i  =0 ; i<100; i++) {
        NSLog(@"您好！！！") ;
    }
    
    
//    [self drawRect:CGRectMake(0, 0, 100, 100) ];
//    //1.UIKit框架UIGraphicsBeginImageContextWithOptions
//    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), NO, 0);
//    UIBezierPath* p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0,0,100,100)];
//    [[UIColor blueColor] setFill];
//    [p fill];
//    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    /*---------------------------------*/
//    UIImageView  *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
//    [imageView setImage:im];
//    [self.view addSubview:imageView];
//    
//    
//    //2.Core Graphics框架UIGraphicsBeginImageContextWithOptions
//    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), NO, 0);
//    CGContextRef con = UIGraphicsGetCurrentContext();
//    CGContextAddEllipseInRect(con, CGRectMake(0,0,100,100));
//    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
//    CGContextFillPath(con);
//    UIImage* im2 = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    /*---------------------------------*/
//    UIImageView  *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
//    [imageView2 setImage:im2];
//    [self.view addSubview:imageView2];
    
    
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), NO, 0);
    
    UIBezierPath* p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0,0,100,100)];
    
    [[UIColor blueColor] setFill];
    
    [p fill];
    
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    UIImageView  *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    [imageView2 setImage:im];
    [self.view addSubview:imageView2];
}

//// 1. 第一种UIKit框架drawRect:
//// 在UIView的子类方法drawRect：中绘制一个蓝色圆
//- (void) drawRect: (CGRect) rect {
//    
//    UIBezierPath* p = [UIBezierPath bezierPathWithOvalInRect:rect];
//    [[UIColor blueColor] setFill];
//    [p fill];
//}


//2. 第二种Core Graphics框架inContext:

- (void)drawRect:(CGRect)rect{
    //当前上下文及画布为当前view
    CGContextRef con = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(con, CGRectMake(0,0,100,100));
    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
    CGContextFillPath(con);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
