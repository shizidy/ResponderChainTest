//
//  UIButton+HitControl.m
//  ResponderChainTest
//
//  Created by Macmini on 2019/8/15.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "UIButton+HitControl.h"
#import <objc/runtime.h>
@implementation UIButton (HitControl)

//-(void)setHitFrame:(CGRect)hitFrame{
//    NSValue *hitValue = [NSValue valueWithCGRect:hitFrame];
//    objc_setAssociatedObject(self, @selector(hitFrame), hitValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//-(CGRect)hitFrame{
//    NSValue *hitValue = objc_getAssociatedObject(self, _cmd);
//    return hitValue.CGRectValue;
//}
//
//-(void)setHitInset:(UIEdgeInsets)hitInset{
//    NSValue *insetValue = [NSValue valueWithUIEdgeInsets:hitInset];
//    objc_setAssociatedObject(self, @selector(hitInset), insetValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    self.hitFrame = UIEdgeInsetsInsetRect(self.bounds, hitInset);
//}
//-(UIEdgeInsets)hitInset{
//    NSValue *insetValue = objc_getAssociatedObject(self, _cmd);
//    return insetValue.UIEdgeInsetsValue;
//}
//
//
//-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
//    if (CGRectEqualToRect(self.hitFrame, CGRectZero)) {
//        return [super pointInside:point withEvent:event];
//    }
//    return CGRectContainsPoint(self.hitFrame, point);
//}
@end

