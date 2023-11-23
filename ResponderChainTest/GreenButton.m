//
//  GreenButton.m
//  ResponderChainTest
//
//  Created by Macmini on 2019/8/15.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "GreenButton.h"

@implementation GreenButton
//设置点击区域（可扩大，可缩小）
//- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
//    CGRect btnBounds = self.bounds;
//    btnBounds = CGRectMake(0, 0, btnBounds.size.width + 100, btnBounds.size.height);
//    NSLog(@"%@", NSStringFromCGPoint(point));
//    return CGRectContainsPoint(btnBounds, point);


//    CGRect bounds = self.bounds;
//    // 扩大点击区域
//    bounds = CGRectInset(bounds, -20, -20);
//    // 若点击的点在新的bounds里面。就返回yes
//    return CGRectContainsPoint(bounds, point);
//}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
