//
//  HQWidthAlleyViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQWidthAlleyViewController.h"

@interface HQWidthAlleyViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation HQWidthAlleyViewController
- (UIScrollView *)scrollView{
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height * 0.5)];
        _scrollView.pagingEnabled = YES;
        _scrollView.bounces = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        [self.view addSubview:_scrollView];
    }
    return _scrollView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
     
    self.view.backgroundColor = [UIColor whiteColor];
    for (int i = 0; i < 3; i ++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i * self.view.frame.size.width, 0, self.view.frame.size.width, self.scrollView.frame.size.height)];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"宽窄巷子%d.png", i + 1]];
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize = CGSizeMake(3 * self.view.frame.size.width, 0);
    UILabel *informationLable = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.scrollView.frame), self.view.frame.size.width, self.view.frame.size.height * 0.5)];
    informationLable.text = @"“宽窄巷子”是成都市三大历史文化保护区之一，由宽巷子、窄巷子和井巷子三条平行排列的城市老式街道及其之间的四合院群落组成，于上世纪80年代列入《成都历史文化名城保护规划》。2008年6月，为期三年的宽窄巷子改造工程全面竣工。修葺一新的宽窄巷子由45个清末民初风格的四合院落、兼具艺术与文化底蕴的花园洋楼、新建的宅院式精品酒店等各具特色的建筑群落组成。";
    informationLable.numberOfLines = 0;
    [self.view addSubview:informationLable];

}



@end
