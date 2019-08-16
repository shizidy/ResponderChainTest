//
//  BlueView.m
//  ResponderChainTest
//
//  Created by Macmini on 2019/8/15.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "BlueView.h"

@implementation BlueView
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@ touch begin", self.class);
    UIResponder *next = [self nextResponder];
    while (next) {
        NSLog(@"%@",next.class);
        next = [next nextResponder];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
