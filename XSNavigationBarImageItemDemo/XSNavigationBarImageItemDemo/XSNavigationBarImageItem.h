//
//  XSNavigationBarImageItem.h
//  XSNavigationBarImageItemDemo
//
//  Created by XingSo on 13-8-20.
//  Copyright (c) 2013年 XingSo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XSNavigationBarImageItem : UIBarButtonItem


- (id)initWithImage:(UIImage *)image buttonSize:(CGSize)size;
- (id)initWithImage:(UIImage *)image buttonSize:(CGSize)size target:(id)delegate action:(SEL)sel forControlEvents:(UIControlEvents)controlEvents;

@end
