//
//  WNImagePicker.h
//  WNImagePicker
//
//  Created by wuning on 16/5/10.
//  Copyright © 2016年 alen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WNImagePicker;

@protocol WNImagePickerDelegate <NSObject>

- (void)getCutImage:(UIImage *)image controller:(WNImagePicker *)vc;

- (void)onCancel:(WNImagePicker *)vc;
@end

@interface WNImagePicker : UIViewController

@property (nonatomic, assign)id<WNImagePickerDelegate>delegate;

@end
