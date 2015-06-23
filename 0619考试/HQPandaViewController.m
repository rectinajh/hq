//
//  HQPandaViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQPandaViewController.h"

@interface HQPandaViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation HQPandaViewController
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
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"熊猫基地%d.png", i + 1]];
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize = CGSizeMake(3 * self.view.frame.size.width, 0);
    UILabel *informationLable = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.scrollView.frame), self.view.frame.size.width, self.view.frame.size.height * 0.5)];
    informationLable.text = @"成都大熊猫繁育研究基地，是一个专门从事濒危野生动物研究、繁育、保护教育和教育旅游的非营利性机构。基地位于成都北郊斧头山，距市区10公里，有一条宽阔的熊猫大道与市区相连，大熊猫博物馆内珍贵的资料、丰富的展品举世无双，是认识大熊猫、回归大自然、观光旅游、休闲娱乐的极佳场所。四周翠竹葱笼，绿树成荫，花香鸟语，空气清新，山野风光和人工景观巧妙融合。大熊猫、小熊猫、黑颈鹤等珍稀濒危动物在这里悠然自得地生息繁衍。馆舍内、草坪上，大熊猫或卧或坐，或饮或嬉，或进或出，各得其所，令人陶醉。";
    informationLable.numberOfLines = 0;
    [self.view addSubview:informationLable];

}

@end
