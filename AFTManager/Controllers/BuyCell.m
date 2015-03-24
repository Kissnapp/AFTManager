//
//  BuyCell.m
//  TTYing
//
//  Created by carl on 15-3-19.
//  Copyright (c) 2015年 Peter Lee. All rights reserved.
//

#import "BuyCell.h"


static const CGFloat cellHeight = 150.0f;
@implementation BuyCell
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self= [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        self.topLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10,self.frame.size.width, 20)];
       // self.topImagevi = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"detail_arr_gray@2x.png"]];
        self.topImagevi.frame = CGRectMake(self.frame.size.width -20, 10, 10, 10);
        
        
        self.middleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, self.frame.size.height+20, self.frame.size.width/2, 40)];
        [self.middleLabel  setFont:[UIFont systemFontOfSize:24]];
        [self.middleLabel setTextColor:[UIColor redColor]];
        
//        self.rightbtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//        [self.rightbtn addTarget:self action:@selector(btn) forControlEvents:UIControlEventTouchUpInside];
//        [self.rightbtn setTitle:@"购买" forState:UIControlStateNormal];
//        self.rightbtn.frame = CGRectMake(self.frame.size.width-90,self.middleLabel.frame.size.height+30 , 70, 30);
//        self.rightbtn.titleLabel.font = [UIFont systemFontOfSize:20];
//        [self.rightbtn setTintColor:[UIColor blackColor]];
//        self.rightbtn.backgroundColor = [UIColor redColor];
//        self.rightbtn.layer.cornerRadius = 5;
        
        self.bottomLabel = [[UILabel alloc]initWithFrame:CGRectMake(10,self.middleLabel.frame.origin.y +20 +40 , 100 , 10 )];
       // self.bottomView = [[BottomView alloc]initWithFrame:CGRectMake(0, self.bottomLabel.frame.origin.y +20, self.frame.size.width, 30)];
      
       //下面的三个按钮
        self.bottomView = [[BottomView alloc]initWithFrame:CGRectMake(0, self.bottomLabel.frame.origin.y +20, self.frame.size.width, 30)];
        
        [self addSubview:self.topImagevi];
        [self addSubview:self.topLabel];
        [self addSubview:self.middleLabel];
        [self addSubview:self.rightbtn];
        [self addSubview:self.bottomLabel];
        [self addSubview:self.bottomView];
        
        [self initProgress];
        
    }
    return self;
}
+ (CGFloat)cellHeight
{
    return cellHeight;
}
-(void)initProgress
{
    MDRadialProgressTheme *newTheme = [[MDRadialProgressTheme alloc] init];
    //newTheme.completedColor = [UIColor colorWithRed:90/255.0 green:212/255.0 blue:39/255.0 alpha:1.0];
    
    //newTheme.incompletedColor = [UIColor colorWithRed:164/255.0 green:231/255.0 blue:134/255.0 alpha:1.0];
    
    newTheme.completedColor = [UIColor cyanColor];
    newTheme.incompletedColor = [UIColor lightGrayColor];
    newTheme.centerColor = [UIColor whiteColor];
    
    //newTheme.centerColor = [UIColor colorWithRed:224/255.0 green:248/255.0 blue:216/255.0 alpha:1.0];
    newTheme.sliceDividerHidden = YES;
    newTheme.labelColor = [UIColor blueColor];
    newTheme.labelShadowColor = [UIColor whiteColor];
    CGRect frame = CGRectMake(self.frame.size.width-90,self.middleLabel.frame.size.height+15 , 60, 60);
    
     _radialView = [[MDRadialProgressView alloc] initWithFrame:frame andTheme:newTheme];
    
    
    _radialView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    [self addSubview:_radialView];
}
-(void)btn
{
    
}


- (MDRadialProgressView *)progressViewWithFrame:(CGRect)frame
{
    MDRadialProgressView *view = [[MDRadialProgressView alloc] initWithFrame:frame];
    
    // Only required in this demo to align vertically the progress views.
    view.center = CGPointMake(self.center.x + 80, view.center.y);
    
    return view;
}






-(void)layoutSubviews
{
    
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
