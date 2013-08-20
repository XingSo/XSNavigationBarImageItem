//
//  ViewController.m
//  XSNavigationBarImageItemDemo
//
//  Created by XingSo on 13-8-20.
//  Copyright (c) 2013年 XingSo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //add no action button
    XSNavigationBarImageItem * eventButton = [[XSNavigationBarImageItem alloc]
                                              initWithImage:[UIImage imageNamed:@"icon_event"]
                                              buttonSize:CGSizeMake(40, 40)];
    
    
    //add button can action event
    XSNavigationBarImageItem * settingsButton = [[XSNavigationBarImageItem alloc]
                                                 initWithImage:[UIImage imageNamed:@"icon_setting"]
                                                 buttonSize:CGSizeMake(40, 40)
                                                 target:self
                                                 action:@selector(onClick)
                                                 forControlEvents:UIControlEventTouchUpInside];
    
    self.title = @"Demo";
    self.navigationItem.leftBarButtonItem = eventButton;
    self.navigationItem.rightBarButtonItem = settingsButton;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



- (void) onClick{
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Clicked" message:nil delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
    
}

@end
