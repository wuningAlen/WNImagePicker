//
//  AlbumPhotoCell.m
//  DYwardrobe
//
//  Created by ningwu on 16/1/6.
//  Copyright © 2016年 DY. All rights reserved.
//

#import "AlbumPhotoCell.h"

@implementation AlbumPhotoCell

- (void)awakeFromNib {
    UIView *selectedView = [[UIView alloc]initWithFrame:self.bounds];
    selectedView.backgroundColor = [UIColor clearColor];
    selectedView.layer.borderColor = [UIColor colorWithRed:251/255.0 green:0/255.0 blue:77/255.0 alpha:1].CGColor;
    selectedView.layer.borderWidth = 2;
    self.selectedBackgroundView = selectedView;
}

@end
