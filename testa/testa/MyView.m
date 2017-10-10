//
//  MyView.m
//  testa
//
//  Created by luohuichao on 2017/10/10.
//  Copyright © 2017年 luohuichao. All rights reserved.
//

#import "MyView.h"
#import "TapDownGestureRecognizer.h"

@implementation MyView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        //
        _scrollview = [[MyScrollview alloc] initWithFrame:CGRectMake( 0, CGRectGetMaxY(frame), CGRectGetWidth(frame), 375)];
        _scrollview.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:_scrollview];
        CGRect rect = frame;
        rect.size.height += CGRectGetHeight(_scrollview.frame);
        self.frame = frame;
        
        [self addGestureRecognizer:[[TapDownGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)]];
    }
    return self;
}

- (void)tapAction:(UITapGestureRecognizer *)tap
{
    NSLog(@"tapAction");
}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
//{
//    return _scrollview;
//}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesMoved");
}

@end
