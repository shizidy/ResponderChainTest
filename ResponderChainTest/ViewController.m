//
//  ViewController.m
//  ResponderChainTest
//
//  Created by Macmini on 2019/8/15.
//  Copyright © 2019 Macmini. All rights reserved.
//

#import "ViewController.h"
#import "BaseView.h"
#define Screen_Height      [[UIScreen mainScreen] bounds].size.height
#define Screen_Width       [[UIScreen mainScreen] bounds].size.width
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BaseView *orangeView = [[BaseView alloc] initWithFrame:CGRectMake(50, 64, 300, 300)];
    [self.view addSubview:orangeView];
    orangeView.backgroundColor = [UIColor orangeColor];
    orangeView.userInteractionEnabled = YES;
    
    
    // Do any additional setup after loading the view.
}




@end
