//
//  HQGoodwoodsViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQGoodwoodsViewController.h"

@interface HQGoodwoodsViewController ()

@end

@implementation HQGoodwoodsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 350)];
    imageView.image = [UIImage imageNamed:@"goodwoods_coffee_logo"];
    [self.view addSubview:imageView];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 360, self.view.frame.size.width, 250)];
    lable.text = @"良木缘自1998年创牌发展至今，在成都及北京、西安、重庆、厦门、武汉、拉萨等全国主要城市已有近70家直营店和特许加盟连锁店，成为目前最具实力的咖啡饮料连锁零售企业之一。 公司依据协业与分业的原则，以强势的品牌形象、浓郁的文化氛围、准确的市场定位、独特的运作模式全面启动咖啡连锁市场，以咖啡馆为载体，为顾客倾心营造亲切、温馨、文化、优雅的第三生活空间。";
    lable.textColor = [UIColor blackColor];
    lable.numberOfLines = 0;
    [self.view addSubview:lable];
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
