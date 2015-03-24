//
//  SetingViewController.m
//  AFTManager
//
//  Created by carl on 15-3-16.
//  Copyright (c) 2015年 Carl Hu. All rights reserved.
//

#import "SetingViewController.h"

@interface SetingViewController ()
{
     NSArray * _resource;
}

@property (nonatomic,strong)UITableView * _tableView;
@end

@implementation SetingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    _resource  =[NSArray arrayWithObject:@"name"];
    self._tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 40)style:UITableViewStylePlain];
    self._tableView.delegate = self;
    self._tableView.dataSource = self;
    self._tableView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self._tableView];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:
        {
            return 1;
            
        }
            break;
        case 1:
        {
            return 3;
        }
            break;
            
        default:
            break;
    }
    return 1;
  
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString * cellIdentifier = @"identifier";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    NSInteger row = indexPath.row;
    NSInteger section = indexPath.section;
    UITableViewCellStyle currentStyle;
    NSString *subtitle ;
  
    NSString *imageName ;
    if (!section &&!row ) {
        subtitle = @"subtittle";
        currentStyle = UITableViewCellStyleSubtitle;
        imageName = @"STARTIMAGE.jpg";
        
    } else {
        currentStyle = UITableViewCellStyleDefault;
        imageName = @"me_selected@2x.png";
    }
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:currentStyle reuseIdentifier:cellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
     }
    
     NSString *title = @"tittle";
    
    if (title) {
        cell.textLabel.text = title;
    }
    
    if (subtitle) {
        cell.detailTextLabel.text = @"111";
    }
    
    if (imageName) {
        cell.imageView.image = [UIImage imageNamed:imageName];
    }
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!indexPath.section && !indexPath.row) {
        return 100;
    } else {
        return 44;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 4;
            break;
        default: {
            return 24;
            break;
        }
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
