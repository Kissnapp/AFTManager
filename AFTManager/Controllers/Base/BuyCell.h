//
//  BuyCell.h
//  TTYing
//
//  Created by carl on 15-3-19.
//  Copyright (c) 2015年 Peter Lee. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BuyCell : UITableViewCell
{
    
}

@property (nonatomic,strong)UILabel* topLabel;
@property (nonatomic,strong)UIImageView* topImagevi;
@property (nonatomic,strong)UILabel* middleLabel;
@property (nonatomic,strong)UIButton* rightbtn;
@property (nonatomic,strong)UILabel* bottomLabel;

@property (nonatomic,assign)CGFloat  progress;

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier width:(CGFloat)width;

+ (CGFloat)cellHeight;
@end
