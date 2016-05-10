//
//  ImageEditVC.m
//  Buggy
//
//  Created by wuning on 16/5/10.
//  Copyright © 2016年 ningwu. All rights reserved.
//

#import "ImageEditVC.h"

@interface ImageEditVC ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ImageEditVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.imgView.contentMode = UIViewContentModeScaleAspectFit;
    [self.imgView setImage:self.image];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
