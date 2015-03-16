//
//  ProjectViewController.m
//  AFTManager
//
//  Created by carl on 15-3-16.
//  Copyright (c) 2015年 Carl Hu. All rights reserved.
//

#import "ProjectViewController.h"

@interface ProjectViewController ()

@end

@implementation ProjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"2222");
    UILabel * la = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    la.text = @"222";
    [self.view addSubview:la];
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
