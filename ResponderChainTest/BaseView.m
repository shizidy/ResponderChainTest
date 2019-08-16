//
//  BaseView.m
//  ResponderChainTest
//
//  Created by Macmini on 2019/8/15.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "BaseView.h"
#import "RedView.h"
#import "BlueView.h"
#import "GreenButton.h"
#import "UIButton+HitControl.h"
#import "UIButton+HitRange.h"
#define Screen_Height      [[UIScreen mainScreen] bounds].size.height
#define Screen_Width       [[UIScreen mainScreen] bounds].size.width

@interface BaseView ()
@property (nonatomic, strong) RedView *redView;
@property (nonatomic, strong) BlueView *blueView;
@property (nonatomic, strong) GreenButton *btn;
@end

@implementation BaseView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setUI];
    }
    return self;
}

- (void)setUI {
    self.redView = [[RedView alloc] initWithFrame:CGRectMake(50, 64, 100, 100)];
    [self addSubview:self.redView];
    self.redView.backgroundColor = [UIColor redColor];
    self.redView.userInteractionEnabled = YES;
    
    self.blueView = [[BlueView alloc] initWithFrame:CGRectMake(80, 80, 100, 100)];
    [self.redView addSubview:self.blueView];
    self.blueView.backgroundColor = [UIColor blueColor];
    self.blueView.userInteractionEnabled = YES;
    
    self.btn = [[GreenButton alloc] initWithFrame:CGRectMake(50, -50, 100, 100)];
    [self addSubview:self.btn];
    self.btn.backgroundColor = [UIColor greenColor];
    self.btn.hitScale = 0.5;
    [self.btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClick:(UIButton *)btn {
    NSLog(@"点击了");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ touch begin", self.class);
    UIResponder *next = [self nextResponder];
    while (next) {
        NSLog(@"%@",next.class);
        next = [next nextResponder];
    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    CGPoint hitPoint = [self convertPoint:point toView:self.btn];
    if ([self.btn pointInside:hitPoint withEvent:event]) {
        return self.btn;
    } else {
        return [super hitTest:point withEvent:event];
    }
}
//
//- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"%@ touch move", self.class);
//}
//
//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    NSLog(@"%@ touch end", self.class);
//}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
//{
//    // 1.如果控件不允许与用用户交互,那么返回nil
//    if (self.userInteractionEnabled == NO || self.alpha <= 0.01 || self.hidden == YES){
//        return nil;
//    }
//    // 2. 如果点击的点在不在当前控件中,返回nil
//    if (![self pointInside:point withEvent:event]){
//        return nil;
//    }
//    // 3.从后往前遍历每一个子控件
//    for(int i = (int)self.subviews.count - 1 ; i >= 0 ;i--){
//        // 3.1获取一个子控件
//        UIView *childView = self.subviews[i];
//        // 3.2当前触摸点的坐标转换为相对于子控件触摸点的坐标
//        CGPoint childP = [self convertPoint:point toView:childView];
//        // 3.3判断是否在在子控件中找到了更合适的子控件(递归循环)
//        UIView *fitView = [childView hitTest:childP withEvent:event];
//        // 3.4如果找到了就返回
//        if (fitView) {
//            return fitView;
//        }
//    }
//    // 4.没找到,表示没有比自己更合适的view,返回自己
//    return self;
//}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
