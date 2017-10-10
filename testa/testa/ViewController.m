//
//  ViewController.m
//  testa
//
//  Created by luohuichao on 2017/10/10.
//  Copyright © 2017年 luohuichao. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyView *my = [[MyView alloc] initWithFrame:CGRectMake(200, 0, 80, 40)];
    my.backgroundColor = [UIColor redColor];
    my.userInteractionEnabled = YES;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:my];
    
    for (UIView *view in self.navigationController.navigationBar.subviews) {
//        if (view isKindOfClass:NSClassFromString(@"")) {
//            <#statements#>
//        }
    }
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    
}






@end
