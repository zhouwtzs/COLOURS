//
//  ViewController.m
//  COLOURS
//
//  Created by 周文涛 on 2016/12/1.
//  Copyright © 2016年 周文涛. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/CALayer.h>
#import "AnimateViewController.h"

#define default_color [UIColor colorWithWhite:143/255.0 alpha:1.0f]

#define red_color [UIColor colorWithRed:198/255.0 green:0 blue:0 alpha:1.0]

@interface ViewController ()

//@property (nonatomic, strong) CAGradientLayer * btnLayer;

//@property (nonatomic, strong) CAShapeLayer * btnLayer;

{
    UIButton * _button[8][8];
}

@property (nonatomic, strong) UIImage * gradientImage;



@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated{
    
    AnimateViewController * animateVC = [[AnimateViewController alloc]init];
    
    [self presentViewController:animateVC animated:NO completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    float ww = self.view.bounds.size.width-10;
//    
//    self.view.backgroundColor = [UIColor blackColor];
//    
//    for (int i = 0; i < 8; i++) {
//        
//        for (int j = 0; j < 8; j++) {
//            
//            UIButton * btn = [self getButton];
//            
//            btn.frame = CGRectMake(ww/8*i+5, ww/8*j+200, ww/8-5, ww/8-5);
//            
//            _button[i][j] = btn;
//        }
//    }
//    
//    NSString * type[4] = {@"波浪",@"中心",@"旋转",@"对角"};
//    
//    NSString * selString[4] = {@"type1:",@"type2:",@"type3:",@"type4"};
//    
//    for (int i = 0; i < 4; i++) {
//        
//        UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
//        
//        btn.bounds = CGRectMake(0, 0, 80, 55);
//        
//        btn.center = CGPointMake(ww/5*(i+1), 40);
//        
//        btn.backgroundColor = [UIColor cyanColor];
//        
//        [btn setTitle:type[i] forState:UIControlStateNormal];
//        
//        if ([self respondsToSelector:NSSelectorFromString(selString[i])]) {
//            
//            [btn addTarget:self action:NSSelectorFromString(selString[i]) forControlEvents:UIControlEventTouchUpInside];
//        }
//        [self.view addSubview:btn];
//    }
}
//
//- (void)type1:(UIButton *)btn{
//    
//    NSInteger orientation = arc4random()%4;
//    
//    switch (orientation) {
//        case 0:
//        {
//            for (int i = 0; i < 8; i++) {
//                
//                [self performSelector:@selector(subType1:) withObject:@[[NSString stringWithFormat:@"%d",i],@"yy"] afterDelay:i*0.1];
//                
//            }
//        }
//            break;
//            
//        case 1:
//        {
//            for (int i = 0; i < 8; i++) {
//                
//                [self performSelector:@selector(subType1:) withObject:@[[NSString stringWithFormat:@"%d",7-i],@"xx"] afterDelay:i*0.1];
//                
//            }
//        }
//            break;
//        case 2:
//            
//        {
//            for (int i = 0; i < 8; i++) {
//                
//                [self performSelector:@selector(subType1:) withObject:@[[NSString stringWithFormat:@"%d",7-i],@"yy"] afterDelay:i*0.1];
//                
//            }
//        }
//            break;
//        case 3:
//            
//        {
//            for (int i = 0; i < 8; i++) {
//                
//                [self performSelector:@selector(subType1:) withObject:@[[NSString stringWithFormat:@"%d",i],@"xx"] afterDelay:i*0.1];
//                
//            }
//        }
//            break;
//        default:
//            break;
//    }
//
//    
//}
//
//- (void)subType1:(NSArray *)array{
//    
//    int index = [[array firstObject] intValue];
//    
//    NSString  * type = [array lastObject];
//    
//    if ([type isEqualToString:@"xx"]) {
//        
//        for (int i = 0; i < 8; i++) {
//            
//            UIButton * btn = _button[index][i];
//            
//            [self buttonAnimate:btn];
//        }
//        
//    }else{
//        
//        for (int i = 0; i < 8; i++) {
//            
//            UIButton * btn = _button[i][index];
//            
//            [self buttonAnimate:btn];
//        }
//        
//    }
//    
//    
//    
//    
//}
//
//- (UIButton *)getButton{
//    
//    float WW = self.view.bounds.size.width-10;
//    
//    //创建按钮
//    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
//    
//    float ww = WW/8-5;
//    
//    btn.backgroundColor = default_color;
//    
//    btn.bounds = CGRectMake(0, 0, ww, ww);
//    
//    btn.center = self.view.center;
//    
//    [self.view addSubview:btn];
//    
//    [btn addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventTouchDown];
//    
//    //添加layer
//    CAShapeLayer * _btnLayer = [CAShapeLayer layer];
//    
//    _btnLayer.bounds = CGRectMake(0, 0, ww/10, ww/10);
//    
//    _btnLayer.cornerRadius = ww/20;
//    
//    _btnLayer.backgroundColor = default_color.CGColor;
//    
//    _btnLayer.position = CGPointMake(ww/2, ww/2);
//    
//    [btn.layer addSublayer:_btnLayer];
//    
//    _gradientImage = GetGradientImage(_btnLayer.bounds);
//    
//    return btn;
//}
//
//
//
//- (void)changeColor:(UIButton *)btn{
//    
//    //先改变按钮的颜色
//    
//    [self buttonAnimate:btn];
//    
//}
//
//- (void)buttonAnimate:(UIButton *)btn{
//    
//    [btn.layer addAnimation:GetBtnColorChangerAnimation() forKey:nil];
//    
//    CAShapeLayer * _btnLayer = (CAShapeLayer *)btn.layer.sublayers.firstObject;
//    
//    [_btnLayer addAnimation:GetLayerStatusChangedAnimation() forKey:nil];
//    
//    _btnLayer.backgroundColor = [UIColor colorWithPatternImage:_gradientImage].CGColor;
//}
//
//
//void drawRadialGradient(CGContextRef context,CGPathRef path,CGColorRef startColor,CGColorRef endColor){
//    
//    //创建颜色空间
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    
//    //位置
//    CGFloat locations[] = { 0.0, 1.0 };
//    
//    //颜色
//    NSArray *colors = @[(__bridge id) startColor, (__bridge id) endColor];
//    
//    //梯形参考
//    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef) colors, locations);
//    
//    
//    //获取边框
//    CGRect pathRect = CGPathGetBoundingBox(path);
//    
//    //得到中心坐标
//    CGPoint center = CGPointMake(CGRectGetMidX(pathRect), CGRectGetMidY(pathRect));
//    
//    //半径
//    CGFloat radius = MIN(pathRect.size.width / 2.0, pathRect.size.height / 2.0)*1.3;
//    
//    CGContextSaveGState(context);
//    
//    CGContextAddPath(context, path);
//    
//    CGContextEOClip(context);
//    
//    CGContextDrawRadialGradient(context, gradient, center, 0, center, radius, 0);
//    
//    CGContextRestoreGState(context);
//    
//    CGGradientRelease(gradient);
//    
//    CGColorSpaceRelease(colorSpace);
//}
//
////得到渐变色
//UIImage * GetGradientImage(CGRect bounds){
//
//    //创建CGContextRef
//    UIGraphicsBeginImageContext(bounds.size);
//    
//    CGContextRef gc = UIGraphicsGetCurrentContext();
//    
//    UIBezierPath * bezierPath = [UIBezierPath bezierPathWithRect:bounds];
//    
//    CGColorRef startColor = [UIColor whiteColor].CGColor;
//    
//    CGColorRef endColor = red_color.CGColor;
//    
//    drawRadialGradient(gc, bezierPath.CGPath, startColor, endColor);
//    
//    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
//    
//    UIGraphicsEndImageContext();
//    
//    return image;
//}
//
////放大缩小
//CABasicAnimation * GetLayerStatusChangedAnimation(){
//    
//    CABasicAnimation * animate = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
//    animate.duration = 0.15;
//    animate.removedOnCompletion = YES;
//    animate.fillMode = kCAFillModeForwards;
//    animate.fromValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.0, 1.0, 1.0)];
//    animate.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(10.0, 10.0, 1.0)];
//    animate.repeatCount = 1.0f;
//    animate.autoreverses = YES;
//    return animate;
//}
////改变layer颜色
////CABasicAnimation * GetLayerColorChangedAnimation(){
//
////    CABasicAnimation * animate = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
////    animate.duration = 0.35;
////    animate.removedOnCompletion = NO;
////    
////    
////    UIImage * image = GetGradientImage(CGRectMake(0, 0, 100, 100));
////    UIColor * color = [UIColor colorWithPatternImage:image];
////    
////    
////    animate.fromValue = (__bridge id)([red_color CGColor]);
////    animate.toValue=(__bridge id)([red_color CGColor]);
////    
////    animate.fromValue = (__bridge id)([color CGColor]);
////    animate.toValue=(__bridge id)([color CGColor]);
////    return animate;
////}
//
//
//
////改变按钮颜色
//CABasicAnimation * GetBtnColorChangerAnimation(){
//    
//    CABasicAnimation * animate = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
//    animate.duration = 0.3;
//    animate.removedOnCompletion = YES;
//    animate.fromValue = (__bridge id)([red_color CGColor]);
//    animate.toValue=(__bridge id)([red_color CGColor]);
//    return animate;
//}
//
////CAAnimationGroup * GetLayerChangeAnimation(){
////    
////    CAAnimationGroup * animateGroup = [CAAnimationGroup animation];
////    animateGroup.animations = @[GetLayerStatusChangedAnimation(),GetLayerColorChangedAnimation()];
////    return animateGroup;
////}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
