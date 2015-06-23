//
//  HQWuHouCiViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQWuHouCiViewController.h"

@interface HQWuHouCiViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation HQWuHouCiViewController

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
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"武侯祠%d.png", i + 1]];
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize = CGSizeMake(3 * self.view.frame.size.width, 0);
    UILabel *informationLable = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.scrollView.frame), self.view.frame.size.width, self.view.frame.size.height * 0.5)];
    informationLable.text = @"武侯祠（汉昭烈庙）位于成都市武侯区，肇始于公元223年修建刘备惠陵时，它是中国唯一的一座君臣合祀祠庙和最负盛名的诸葛亮、刘备及蜀汉英雄纪念地，也是全国影响最大的三国遗迹博物馆。1961年国务院公布为首批全国重点文物保护单位，2008年评选为首批国家一级博物馆。成都武侯祠现占地15万平方米，由三国历史遗迹区（文物区）、西区（三国文化体验区）以及锦里民俗区（锦里）三部分组成，享有“三国圣地”的美誉。";
    informationLable.numberOfLines = 0;
    [self.view addSubview:informationLable];

}

@end
