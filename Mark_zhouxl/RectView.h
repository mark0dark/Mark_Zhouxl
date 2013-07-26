//
//  RectView.h
//  Mark_zhouxl
//
//  Created by xiuke on 13-7-26.
//  Copyright (c) 2013年 zhouxl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSObject+CGRect.h"
@interface RectView : UIView
{
    UISlider*       _slider;
    UILabel*        _title;
    UILabel*        _subTitle;
    
    CGFloat         _distance;
    BOOL            _isChange;
}
@end
