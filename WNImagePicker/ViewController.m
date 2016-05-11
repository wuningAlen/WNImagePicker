//
//  ViewController.m
//  WNImagePicker
//
//  Created by wuning on 16/5/10.
//  Copyright © 2016年 alen. All rights reserved.
//

#import "ViewController.h"
#import "WNImagePicker.h"
#import "WNImapgePicker/ImageEditVC.h"

@interface ViewController ()<WNImagePickerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCamare:(id)sender {
    WNImagePicker *pickerVC  = [[WNImagePicker alloc]init];
    pickerVC.delegate = self;
    UINavigationController *navVC = [[UINavigationController alloc]initWithRootViewController:pickerVC];
    [self presentViewController:navVC animated:YES completion:nil];
}

#pragma mark -- WNImagePickerDelegate
- (void)getCutImage:(UIImage *)image controller:(WNImagePicker *)vc
{
    [vc.navigationController dismissViewControllerAnimated:NO completion:nil];
    ImageEditVC *editVC = [[ImageEditVC alloc]init];
    editVC.image = image;
    [self.navigationController pushViewController:editVC animated:YES];
}

- (void)onCancel:(WNImagePicker *)vc
{
    [vc.navigationController dismissViewControllerAnimated:YES completion:nil];
}
@end
