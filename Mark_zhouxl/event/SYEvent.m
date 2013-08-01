//
//  SYEvent.m
//  Test
//
//  Created by xiuke on 13-7-30.
//  Copyright (c) 2013年 zhouxl. All rights reserved.
//

#import "SYEvent.h"

@interface SYEventTarget : NSObject
@property (nonatomic,assign) id target;
@property (nonatomic) SEL selector;
+ (SYEventTarget *)createTarget:(id)target selector:(SEL)selector;

@end
@implementation SYEventTarget

+ (SYEventTarget *)createTarget:(id)target selector:(SEL)selector
{
    SYEventTarget* tar = [[[SYEventTarget alloc] init] autorelease];
    tar.target = target;
    tar.selector = selector;
    return tar;
}

@end

@implementation SYEvent

- (id)initWithHost:(id)host{
    self = [super init];
    if (self) {
        _host = host;
        _targets = [[NSMutableArray alloc] initWithCapacity:1];
    }
    return self;
}
+ (SYEvent *)createOnHost:(id)host
{
    SYEvent* evt = [[[SYEvent alloc] initWithHost:host] autorelease];
    return evt;
}

- (void)addSYEvent:(id)target handle:(SEL)handle
{
    SYEventTarget* tar = [SYEventTarget createTarget:target selector:handle];
    [_targets addObject:tar];
}

- (void)removeSYEvent:(id)target handle:(SEL)handle
{
    for (SYEventTarget* tar in _targets) {
        if (tar.target == target && tar.selector == handle) {
            [_targets removeObject:tar];
            break;
        }
    }
}

- (void)invoke:(id)sender args:(id)args
{
    for (SYEventTarget* tar in _targets) {
        [tar.target performSelector:tar.selector withObject:sender withObject:args];
    }
}
@end
