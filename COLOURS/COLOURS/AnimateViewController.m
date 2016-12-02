//
//  AnimateViewController.m
//  COLOURS
//
//  Created by 周文涛 on 2016/12/1.
//  Copyright © 2016年 周文涛. All rights reserved.
//

#import "AnimateViewController.h"

#define default_color [UIColor colorWithWhite:0.33 alpha:1.0f]

#define black_color [UIColor colorWithWhite:0 alpha:1.0f]

#define red_color [UIColor colorWithRed:221/255.0 green:43/255.0 blue:37/255.0 alpha:1.0]

#define light_color [UIColor colorWithWhite:216/255.0 alpha:1.0f]

#define white_colo  [UIColor whiteColor]

@interface AnimateViewController ()

@end

@implementation AnimateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    //创建按钮
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.bounds = CGRectMake(0, 0, 50, 50);
    
    //[btn setBackgroundImage:GetGradientImage(btn.bounds) forState:UIControlStateNormal];
    
    btn.backgroundColor = default_color;
    
    btn.center = self.view.center;
    
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventTouchDown];
    
    CAShapeLayer * btnLayer = [CAShapeLayer layer];
    
    btnLayer.bounds = CGRectMake(0, 0, 50, 50);
    
    //btnLayer.cornerRadius = 100;
    
    btnLayer.backgroundColor = default_color.CGColor;
    
    btnLayer.position = CGPointMake(25, 25);
    
    [btn.layer addSublayer:btnLayer];
    
}

- (void)changeColor:(UIButton *)btn{
    
    //CAShapeLayer * btnLayer = (CAShapeLayer *)btn.layer.sublayers.firstObject;
    
    
    
    
}

- (CABasicAnimation *)getAnimation{
    
    CABasicAnimation * scaleAnimate = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimate.duration = 2;
    scaleAnimate.removedOnCompletion = YES;
    scaleAnimate.fillMode = kCAFillModeForwards;
    scaleAnimate.fromValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.0, 0.0, 1.0)];
    scaleAnimate.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)];
    scaleAnimate.repeatCount = 1.0f;
    scaleAnimate.autoreverses = YES;
    return scaleAnimate;
}



//得到渐变色
UIImage * GetGradientImage(CGRect bounds){
    
    //创建CGContextRef
    UIGraphicsBeginImageContext(bounds.size);
    
    CGContextRef gc = UIGraphicsGetCurrentContext();
    
    UIBezierPath * bezierPath = [UIBezierPath bezierPathWithRect:bounds];
    
    CGColorRef startColor = light_color.CGColor;
    
    CGColorRef endColor = red_color.CGColor;
    
    
    drawRadialGradient(gc, bezierPath.CGPath, startColor, endColor);
    
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

void drawRadialGradient(CGContextRef context,CGPathRef path,CGColorRef startColor,CGColorRef endColor){
    
    //创建颜色空间
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    //位置
    CGFloat locations[] = { 0.3, 0.5 ,1.0};
    
    //颜色
    NSArray *colors = @[(__bridge id) startColor, (__bridge id) endColor, (__bridge id)(black_color.CGColor)];
    
    //梯形参考
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);
    
    
    //获取边框
    CGRect pathRect = CGPathGetBoundingBox(path);
    
    //得到中心坐标
    CGPoint center = CGPointMake(CGRectGetMidX(pathRect), CGRectGetMidY(pathRect));
    
    //半径
    CGFloat radius = MAX(pathRect.size.width / 2.0, pathRect.size.height / 2.0)*sqrt(3);
    
    CGContextSaveGState(context);
    
    CGContextAddPath(context, path);
    
    CGContextEOClip(context);
    
    CGContextDrawRadialGradient(context, gradient, center, 0, center, radius, 0);
    
    CGContextRestoreGState(context);
    
    CGGradientRelease(gradient);
    
    CGColorSpaceRelease(colorSpace);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
