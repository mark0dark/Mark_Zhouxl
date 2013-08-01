//
//  RectView.m
//  Mark_zhouxl
//
//  Created by xiuke on 13-7-26.
//  Copyright (c) 2013年 zhouxl. All rights reserved.
//

#import "RectView.h"

@implementation RectView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        /*控制*/
        _slider = [[UISlider alloc] initWithFrame:CGRectMake(20, 20, 100, 10)];
        _slider.minimumValue = 50;
        _slider.maximumValue = 100;
        [_slider addTarget:self action:@selector(changeRect:) forControlEvents:UIControlEventValueChanged];
        [self addSubview:_slider];
        /*参照物*/
        _title = [[UILabel alloc] initWithFrame:CGRectMake(20, 60, 200, 30)];
        _title.backgroundColor = [UIColor clearColor];
        _title.text = @"左拐，说好的Demo";
        [self addSubview:_title];
        
        /*这个label的坐标完全由上一个坐标来定，相对坐标，*/
        _subTitle = [[UILabel alloc] init];
        _subTitle.frame = CGRectMake(
                                     CGRectGetMidX(_title.frame),
                                     CGRectGetMaxY(_title.frame)+10,
                                     CGRectGetWidth(_title.frame),
                                     CGRectGetHeight(_title.frame));
        _subTitle.backgroundColor = [UIColor orangeColor];
        _subTitle.text = @"这个随着标题动态改变";
        [self addSubview:_subTitle];
        /*改变大小*/
        UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake(CGRectGetMaxX(_slider.frame)+30, CGRectGetMinY(_slider.frame), 80, 30);
        [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        _distance = 100;
        
        /*SYEvent 初始化,类方法*/
        self.moveLabel = [SYEvent createOnHost:self];
    }
    return self;
}

- (void)changeRect:(UISlider *)sender
{
    /*移动UI到X*/
    _title.frame = CGRectMoveToX(_title.frame, sender.value);
    NSLog(@"%@",_title);
}
- (void)buttonPressed:(UIButton *)sender
{
    /*y方向移动Y的距离*/
    _subTitle.frame = CGRectMoveY(_subTitle.frame, _isChange?-_distance:_distance);
    _isChange = !_isChange;
    [self.moveLabel invoke:sender args:_subTitle];
}
@end
