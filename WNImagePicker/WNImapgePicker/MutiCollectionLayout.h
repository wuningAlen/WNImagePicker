//
//  MutiCollectionLayout.h
//  writer
//
//  Created by wuning on 15/9/25.
//  Copyright © 2015年 writer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MutiCollectionLayout : UICollectionViewLayout

/*
 定义collectionCell的 width/height 的值 这个值确定无论在什么尺寸下保持Cell的长宽比例
 */
@property (nonatomic) CGFloat widthHeightScale;
/*
 每行之间的固定距离
 */

@property (nonatomic) CGFloat lineSpacing;
/*
 每个Item之间的固定距离
 */

@property (nonatomic) CGFloat interitemSpacing;

/*
 定义每行 要保持多少个Cell  numberOfItemForLine > 1
 */
@property (nonatomic) NSInteger numberOfItemForLine;

@property (nonatomic) UIEdgeInsets sectionInset;

- (CGRect)cellSizeForIndex:(NSInteger)index;

@end
