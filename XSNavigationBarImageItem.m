//
//  XSNavigationBarImageItem.m
//  XSNavigationBarImageItemDemo
//
//  Created by XingSo on 13-8-20.
//  Copyright (c) 2013年 XingSo. All rights reserved.
//

#import "XSNavigationBarImageItem.h"

@interface XSNavigationBarImageItem()
{
    id _delegate;
    SEL _sel;
    UIButton * _button;
    
}

@end

@implementation XSNavigationBarImageItem

- (id)initWithImage:(UIImage *)image buttonSize:(CGSize)size{
    
    return [self initWithImage:image buttonSize:size target:nil action:nil forControlEvents:UIControlEventTouchUpInside];
}

- (id)initWithImage:(UIImage *)image buttonSize:(CGSize)size target:(id)delegate action:(SEL)sel forControlEvents:(UIControlEvents)controlEvents{
    
    _button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    [_button setBackgroundImage:image forState:UIControlStateNormal];
    [_button addTarget:delegate action:sel forControlEvents:controlEvents];
    
    UIBarButtonItem * button = [[UIBarButtonItem alloc] initWithCustomView:_button];
    
    
    return (id)button;
}

@end
