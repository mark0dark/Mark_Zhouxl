//
//  NSObject+CGRect.m
//  Test
//
//  Created by 小六 on 13-7-24.
//  Copyright (c) 2013年 zhouxl. All rights reserved.
//

#import "NSObject+CGRect.h"

@implementation NSObject (CGRect)
CGRect CGRectMoveX(CGRect rect1, CGFloat x)
{
    rect1.origin.x = rect1.origin.x +x;
    return rect1;
}
CGRect CGRectMoveToX(CGRect rect1, CGFloat x){
    rect1.origin.x = x;
    return rect1;
}
CGRect CGRectMoveY(CGRect rect1,CGFloat y)
{
    rect1.origin.y = rect1.origin.y +y;
    return rect1;
}
CGRect CGRectMoveToY(CGRect rect1, CGFloat y){
    rect1.origin.y = y;
    return rect1;
}
CGRect CGRectAddH(CGRect rect1,CGFloat h){
    rect1.size.height = rect1.size.height +h;
    return rect1;
}
CGRect CGRectChangeHeight(CGRect rect1, CGFloat height){
    rect1.size.height = height;
    return rect1;
}



CGRect CGRectAlignTop( CGRect rect1, CGRect rect2 )
{
	rect1.origin.y = rect2.origin.y;
	return rect1;
}

CGRect CGRectAlignBottom( CGRect rect1, CGRect rect2 )
{
	rect1.origin.y = CGRectGetMaxY( rect2 ) - rect1.size.height;
	return rect1;
}

CGRect CGRectAlignLeft( CGRect rect1, CGRect rect2 )
{
	rect1.origin.x = rect2.origin.x;
	return rect1;
}

CGRect CGRectAlignRight( CGRect rect1, CGRect rect2 )
{
	rect1.origin.x = CGRectGetMaxX( rect2 ) - rect1.size.width;
	return rect1;
}

CGRect CGRectAlignLeftTop( CGRect rect1, CGRect rect2 )
{
	rect1.origin.x = rect2.origin.x;
	rect1.origin.y = rect2.origin.y;
	return rect1;
}

CGRect CGRectAlignLeftBottom( CGRect rect1, CGRect rect2 )
{
	rect1.origin.x = rect2.origin.x;
	rect1.origin.y = CGRectGetMaxY( rect2 ) - rect1.size.height;
	return rect1;
}

CGRect CGRectAlignRightTop( CGRect rect1, CGRect rect2 )
{
	rect1.origin.x = CGRectGetMaxX( rect2 ) - rect1.size.width;
	rect1.origin.y = rect2.origin.y;
	return rect1;
}

CGRect CGRectAlignRightBottom( CGRect rect1, CGRect rect2 )
{
	rect1.origin.x = CGRectGetMaxX( rect2 ) - rect1.size.width;
	rect1.origin.y = CGRectGetMaxY( rect2 ) - rect1.size.height;
	return rect1;
}

CGRect CGRectCloseToTop( CGRect rect1, CGRect rect2 )
{
	rect1.origin.y = CGRectGetMaxY( rect2 );
	return rect1;
}

CGRect CGRectCloseToBottom( CGRect rect1, CGRect rect2 )
{
	rect1.origin.y = rect2.origin.y - rect1.size.height;
	return rect1;
}

CGRect CGRectCloseToLeft( CGRect rect1, CGRect rect2 )
{
	rect1.origin.x = CGRectGetMaxX( rect2 );
	return rect1;
}

CGRect	CGRectCloseToRight( CGRect rect1, CGRect rect2 )
{
	rect1.origin.x = rect2.origin.x - rect1.size.width;
	return rect1;
}

@end
