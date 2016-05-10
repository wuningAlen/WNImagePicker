//
//  ViewController.m
//  WNImagePicker
//
//  Created by wuning on 16/5/10.
//  Copyright © 2016年 alen. All rights reserved.
//

#import "ViewController.h"
#import "WNImagePicker.h"

@interface ViewController ()

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
    UINavigationController *navVC = [[UINavigationController alloc]initWithRootViewController:pickerVC];
    [self presentViewController:navVC animated:YES completion:nil];
}
@end
