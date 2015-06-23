//
//  HQDuFuThatchedCottageViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQDuFuThatchedCottageViewController.h"

@interface HQDuFuThatchedCottageViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation HQDuFuThatchedCottageViewController

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
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"杜甫草堂%d.png", i + 1]];
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize = CGSizeMake(3 * self.view.frame.size.width, 0);
    UILabel *informationLable = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(self.scrollView.frame), self.view.frame.size.width, self.view.frame.size.height * 0.5)];
    informationLable.text = @"成都杜甫草堂，是中国唐代大诗人杜甫流寓成都时的居所。公元759年冬天，杜甫为避 “安史之乱”，携家带口由陇右 (今甘肃省南部)入蜀辗转来到成都。次年春，在友人的帮助下，在成都西郊风景如画的浣花溪畔修建茅屋居住。第二年春天，茅屋落成，称 “成都草堂”。他的诗“万里桥西一草堂，百花潭水即沧浪”（《狂夫》）中提到的便是成都草堂。他在这里先后居住了将近四年，因曾被授“检校工部员外郎”之衔，而又被称做杜工部。765年，严武病逝，失去唯一依靠的杜甫只得携家带口告别成都，两年后经三峡流落荆、湘等地。";
    informationLable.numberOfLines = 0;
    [self.view addSubview:informationLable];

}
@end
