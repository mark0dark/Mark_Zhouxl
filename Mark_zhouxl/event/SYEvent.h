//
//  SYEvent.h
//  Test
//
//  Created by xiuke on 13-7-30.
//  Copyright (c) 2013年 zhouxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SYEvent : NSObject
{
    id                  _host;
    NSMutableArray*     _targets;
}

/**
 *	@brief	创建事件发送接口
 *
 *	@param 	host 	宿主，发送事件的
 *
 *	@return	事件
 */
+ (SYEvent *)createOnHost:(id)host;

/**
 *	@brief	添加事件监听者,在要接收事件的类里调用
 *
 *	@param 	target 	监听者实例
 *	@param 	Handle 	接收事件的函数，参数为（id）sender,(id)args
 */
- (void)addSYEvent:(id)target handle:(SEL)handle;

/**
 *	@brief	移除事件监听者
 */
- (void)removeSYEvent:(id)target handle:(SEL)handle;


/**
 *	@brief	触发事件，在要发送事件的类内部使用
 *
 *	@param 	sender 	事件宿主
 *	@param 	args 	参数
 */
- (void)invoke:(id)sender args:(id)args;

@end
