//
//  NSObject+CGRect.h
//  Test
//
//  Created by 小六 on 13-7-24.
//  Copyright (c) 2013年 zhouxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (CGRect)
CGRect  CGRectMoveX(CGRect rect1, CGFloat x);/*沿X移动*/                  
CGRect  CGRectMoveToX(CGRect rect1, CGFloat x);/*移动到X*/
CGRect  CGRectMoveY(CGRect rect1,CGFloat y);/*沿Y移动*/
CGRect  CGRectMoveToY(CGRect rect1, CGFloat y);/*移动到y*/
CGRect  CGRectAddH(CGRect rect1,CGFloat h);/*增加高度h*/
CGRect CGRectChangeHeight(CGRect rect1, CGFloat height);/*将高度改为height*/
/*以下为库*/
CGRect	CGRectAlignTop( CGRect rect1, CGRect rect2 );			// 右边缘对齐
CGRect	CGRectAlignBottom( CGRect rect1, CGRect rect2 );		// 下边缘对齐
CGRect	CGRectAlignLeft( CGRect rect1, CGRect rect2 );			// 左边缘对齐
CGRect	CGRectAlignRight( CGRect rect1, CGRect rect2 );			// 上边缘对齐

CGRect	CGRectAlignLeftTop( CGRect rect1, CGRect rect2 );		// 右边缘对齐
CGRect	CGRectAlignLeftBottom( CGRect rect1, CGRect rect2 );	// 下边缘对齐
CGRect	CGRectAlignRightTop( CGRect rect1, CGRect rect2 );		// 右边缘对齐
CGRect	CGRectAlignRightBottom( CGRect rect1, CGRect rect2 );	// 下边缘对齐

CGRect	CGRectCloseToTop( CGRect rect1, CGRect rect2 );			// 与上边缘靠近
CGRect	CGRectCloseToBottom( CGRect rect1, CGRect rect2 );		// 与下边缘靠近
CGRect	CGRectCloseToLeft( CGRect rect1, CGRect rect2 );		// 与左边缘靠近
CGRect	CGRectCloseToRight( CGRect rect1, CGRect rect2 );		// 与右边缘靠近
@end
