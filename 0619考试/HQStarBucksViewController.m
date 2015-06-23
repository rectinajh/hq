//
//  HQStarBucksViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQStarBucksViewController.h"

@interface HQStarBucksViewController ()

@end

@implementation HQStarBucksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 350)];
    imageView.image = [UIImage imageNamed:@"starbucks_coffee_detail"];
    [self.view addSubview:imageView];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 360, self.view.frame.size.width, 250)];
    lable.text = @"星巴克（Starbucks）是美国一家连锁咖啡公司的名称，1971年成立，为全球最大的咖啡连锁店，其总部坐落美国华盛顿州西雅图市。星巴克旗下零售产品包括30多款全球顶级的咖啡豆、手工制作的浓缩咖啡和多款咖啡冷热饮料、新鲜美味的各式糕点食品以及丰富多样的咖啡机、咖啡杯等商品。星巴克在全球范围内已经有近12,000间分店遍布北美、南美洲、欧洲、中东及太平洋区。2012年3月，星巴克在美国的两款甜点被曝用胭脂虫当着色剂，专家称或令哮喘者过敏。2012年4月，星巴克表示停用该着色剂。";
    lable.textColor = [UIColor blackColor];
    lable.numberOfLines = 0;
    [self.view addSubview:lable];

}

@end
