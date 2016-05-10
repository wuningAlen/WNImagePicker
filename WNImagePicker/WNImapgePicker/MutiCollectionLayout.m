//
//  MutiCollectionLayout.m
//  writer
//
//  Created by wuning on 15/9/25.
//  Copyright © 2015年 writer. All rights reserved.
//

#import "MutiCollectionLayout.h"
#import <Foundation/Foundation.h>

@implementation MutiCollectionLayout
{
    NSInteger contentHeight;
    NSMutableArray *attributeArray;
}

- (void)prepareLayout
{
    [super prepareLayout];
    
    // 开始计算布局
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
    attributeArray = [NSMutableArray arrayWithCapacity:count]; // 此时旧的布局已经失效
    if (count == 0) {
        contentHeight = 0;
    } else {
        CGFloat cellWidth = (self.collectionView.frame.size.width - self.sectionInset.right - self.sectionInset.left - (self.numberOfItemForLine - 1) * self.interitemSpacing)/self.numberOfItemForLine;
        
        CGFloat cellHeight = cellWidth/self.widthHeightScale;
        
        for (int index = 0; index < count; index ++) {
            NSInteger rowIndex = index%self.numberOfItemForLine;
            NSInteger lineIndex = floor(index/self.numberOfItemForLine);
            
            CGFloat cellOrginX = self.sectionInset.right + rowIndex*cellWidth +rowIndex *self.interitemSpacing;
            CGFloat cellOrginY = self.sectionInset.top + lineIndex*cellHeight + lineIndex*self.lineSpacing;
            CGRect frame = CGRectMake(cellOrginX, cellOrginY, cellWidth, cellHeight);
            [attributeArray addObject:[NSValue valueWithCGRect:frame]];
        }
        
        
        NSInteger lineCount = ceilf(count/(float)self.numberOfItemForLine);
        contentHeight = self.sectionInset.top + self.sectionInset.bottom + (self.lineSpacing + cellHeight) * lineCount;
    }
}

- (CGSize)collectionViewContentSize
{
    CGSize size = CGSizeMake(self.collectionView.frame.size.width, MAX(contentHeight, self.collectionView.frame.size.height+1));
    return size;
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSMutableArray *array = [NSMutableArray array];
    for (int index = 0; index < attributeArray.count; index ++) {
        CGRect frame = [[attributeArray objectAtIndex:index] CGRectValue];
        UICollectionViewLayoutAttributes *att = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        att.frame = frame;
        [array addObject:att];
    }
    return array;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewLayoutAttributes *att = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    att.frame = [attributeArray[indexPath.row] CGRectValue];
    return att;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}

- (CGRect)cellSizeForIndex:(NSInteger)index
{
    CGRect frame = [[attributeArray objectAtIndex:index] CGRectValue];
    return frame;
}

@end
