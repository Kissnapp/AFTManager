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
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier width:(CGFloat)width
{
    self= [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        self.topLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10,self.frame.size.width, 20)];
        self.topImagevi = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"me_normal@2x.png"]];
        self.topImagevi.frame = CGRectMake(self.contentView.frame.size.width-10, 10, 10, 10);
         NSLog(@"11=%f",self.window.frame.size.width);
         NSLog(@"22=%f",self.contentView.frame.size.width);
     
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
      

        
        [self addSubview:self.topImagevi];
        [self addSubview:self.topLabel];
        [self addSubview:self.middleLabel];
        [self addSubview:self.rightbtn];
        [self addSubview:self.bottomLabel];
    
        
    
        
    }
    return self;
}
+ (CGFloat)cellHeight
{
    return cellHeight;
}
-(void)btn
{
    
}
//- (void)setFrame:(CGRect)frame {
//    
//    frame.size.width = self.window.frame.size.width;
//    [super setFrame:frame];
//    NSLog(@"11=%f",self.window.frame.size.width);
//}






-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.backgroundView.frame = CGRectMake(0, 0, self.window.frame.size.width,0);

   
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
