//
//  RootViewController.m
//  Mark_zhouxl
//
//  Created by xiuke on 13-7-26.
//  Copyright (c) 2013年 zhouxl. All rights reserved.
//

#import "RootViewController.h"
#import "RectView.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	RectView* rectView = [[RectView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:rectView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
