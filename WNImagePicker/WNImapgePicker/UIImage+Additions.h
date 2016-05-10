//
//  UIImage+Additions.h
//  wochacha
//
//  Created by Ning on 13-9-7.
//  Copyright (c) 2012年 wochacha. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UIImage (Additions)

- (UIImage *)resizableImageWithOffsetTop:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right;

- (UIImage *)getScaledImage:(CGFloat) fscale;

- (UIImage *)getSubImage:(CGRect)rect;

- (UIImage*)scaleToSize:(CGSize)size;

+ (UIImage *)imageWithUIView:(UIView *)view;

+ (UIImage *)imageWithColor:(UIColor *)color;   

@end
