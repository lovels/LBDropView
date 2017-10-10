//
//  TapDownGestureRecognizer.m
//  testa
//
//  Created by luohuichao on 2017/10/10.
//  Copyright © 2017年 luohuichao. All rights reserved.
//

#import "TapDownGestureRecognizer.h"

@implementation TapDownGestureRecognizer

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (self.state == UIGestureRecognizerStatePossible) {
        self.state = UIGestureRecognizerStateRecognized;
    }
}

//-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
//    self.state = UIGestureRecognizerStateFailed;
//
//    NSLog(@"touchesMoved");
//}
//
//-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
//    self.state = UIGestureRecognizerStateFailed;
//
//    NSLog(@"touchesEnded");
//}

@end
