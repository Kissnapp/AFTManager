//
//  ProjectViewController.m
//  AFTManager
//
//  Created by carl on 15-3-16.
//  Copyright (c) 2015年 Carl Hu. All rights reserved.
//

#import "ProjectViewController.h"
#import "BuyCell.h"
@interface ProjectViewController ()
{
    
}
@property (nonatomic,strong)UITableView * _tableView;
@end

@implementation ProjectViewController
-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"222");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self._tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 40)style:UITableViewStylePlain];
    
    self._tableView.delegate = self;
    self._tableView.dataSource = self;
    self._tableView.showsHorizontalScrollIndicator = NO;
    self._tableView.showsVerticalScrollIndicator = NO;
    self._tableView.sectionIndexColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self._tableView];

}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"identifier";
    BuyCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[BuyCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier ];
        
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
