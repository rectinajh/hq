//
//  HQHappyViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQHappyViewController.h"

@interface HQHappyViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation HQHappyViewController

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
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"欢乐谷%d.png", i + 1]];
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize = CGSizeMake(3 * self.view.frame.size.width, 0);
    UILabel *informationLable = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.scrollView.frame), self.view.frame.size.width, self.view.frame.size.height * 0.5)];
    informationLable.text = @"成都欢乐谷主题公园（英文：Chengdu Happy Valley）是成都市文化产业重点项目和旅游产业重点项目。位于成都市金牛区西华大道16号，即北三环路一段与西华大道（交大路北延线）的交界处，距天府广场6.6公里，至成都市中心商务区（CBD）车行十余分钟，至成绵、成渝高速入口车行时间分别为15和20分钟。项目占地47万平方米。 园区由阳光港、欢乐时光、加勒比旋风、巴蜀迷情、飞行岛、魔幻城堡、飞跃地中海等七大主题区域组成，其中设置了130余项体验观赏项目，包括43项娱乐设备设施、58处人文生态景观、10项艺术表演、20项主题游戏和商业辅助性项目。";
    informationLable.numberOfLines = 0;
    [self.view addSubview:informationLable];

}

@end
