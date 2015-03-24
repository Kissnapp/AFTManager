//
//  ContacterViewController.m
//  AFTManager
//
//  Created by carl on 15-3-16.
//  Copyright (c) 2015年 Carl Hu. All rights reserved.
//

#import "ContacterViewController.h"

@interface ContacterViewController ()
{
    NSMutableArray * _suoyinCityList;
}

@property (nonatomic,strong)UITableView * _tableView;

@end

@implementation ContacterViewController
-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"111");
    
    
     
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _suoyinCityList  =[[NSMutableArray alloc]init];
    self._tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 40)style:UITableViewStylePlain];
    self._tableView.delegate = self;
    self._tableView.dataSource = self;
    self._tableView.showsHorizontalScrollIndicator = NO;
    self._tableView.showsVerticalScrollIndicator = NO;
    self._tableView.sectionIndexColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self._tableView];
    
    
    for(char c ='A';c<='Z';c++)
        
    {
        
        //当前字母
        
        NSString *zimu=[NSString stringWithFormat:@"%c",c];
        
        if (![zimu
              isEqualToString:@"I"]&&![zimu
                                       isEqualToString:@"O"]&&![zimu
                                                                isEqualToString:@"U"]&&![zimu isEqualToString:@"V"])
            
        {
            
            [_suoyinCityList addObject:[NSString stringWithFormat:@"%c",c]];
            
        }
        
    }
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _suoyinCityList.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellIdentifier = @"identifier";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    }
    cell.textLabel.text = [_suoyinCityList objectAtIndex:indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}


-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView

{
    return _suoyinCityList;
    
}
//索引列点击事件

-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index

{
    
    NSLog(@"===%@  ===%ld",title,(long)index);
    
    //点击索引，列表跳转到对应索引的行
    
    [tableView
     scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:index +4]
     atScrollPosition:UITableViewScrollPositionTop animated:YES];
    
    
    
    //弹出首字母提示
    
    //[self showLetter:title ];
    
    return index;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
 
    UIView *headView = [[UIView alloc]init];
    headView.backgroundColor = [UIColor clearColor];

  
        //标题背景
        UIView *biaotiView = [[UIView alloc]init];
        biaotiView.backgroundColor = [UIColor cyanColor];
        biaotiView.frame=CGRectMake(0, 0, 320, 30);
        [headView addSubview:biaotiView];
        
        //标题文字
        UILabel *lblBiaoti = [[UILabel alloc]init];
        lblBiaoti.backgroundColor = [UIColor clearColor];
        lblBiaoti.textAlignment = NSTextAlignmentLeft;
        lblBiaoti.font = [UIFont systemFontOfSize:15];
        lblBiaoti.textColor = [UIColor blackColor];
        lblBiaoti.frame = CGRectMake(15, 7.5, 200, 15);
        lblBiaoti.text = [_suoyinCityList objectAtIndex:section];
        
        [biaotiView addSubview:lblBiaoti];
        return headView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
@end
