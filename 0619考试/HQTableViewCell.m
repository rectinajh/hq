//
//  HQTableViewCell.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//
#import "HQTableViewCell.h"

@implementation HQTableViewCell

+ (instancetype)tableViewCell:(UITableView *)tableView{
    static NSString *ID = @"cell";
    HQTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"HQTableViewCell" owner:nil options:nil].lastObject;
    }
    return cell;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
