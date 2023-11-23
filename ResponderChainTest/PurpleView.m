//
//  PurpleView.m
//  ResponderChainTest
//
//  Created by Macmini on 2019/8/16.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "PurpleView.h"

@implementation PurpleView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ touch begin", self.class);
    UIResponder *next = [self nextResponder];
    while (next) {
        NSLog(@"%@",next.class);
        next = [next nextResponder];
    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    //首先判断是否可以接收事件
    if (self.userInteractionEnabled == NO || self.hidden == YES || self.alpha <= 0.01) return nil;
    //然后判断点是否在当前视图上
    if ([self pointInside:point withEvent:event] == NO) return nil;
    //循环遍历所有子视图，查找是否有最合适的视图
    for (NSInteger i = self.subviews.count - 1; i >= 0; i--) {
        UIView *childView = self.subviews[i];
        //转换点到子视图坐标系上
        CGPoint childPoint = [self convertPoint:point toView:childView];
        //递归查找是否存在最合适的view
        UIView *fitView = [childView hitTest:childPoint withEvent:event];
        //如果返回非空，说明子视图中找到了最合适的view，那么返回它
        if (fitView) {
            return fitView;
        }
    }
    //循环结束，仍旧没有合适的子视图可以处理事件，那么就认为自己是最合适的view
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
