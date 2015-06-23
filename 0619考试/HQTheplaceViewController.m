//
//  HQTheplaceViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQTheplaceViewController.h"

@interface HQTheplaceViewController ()

@end

@implementation HQTheplaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 350)];
    imageView.image = [UIImage imageNamed:@"theplace_coffee_detail"];
    [self.view addSubview:imageView];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 360, self.view.frame.size.width, 250)];
    lable.text = @"the place 毕业一年多的时间 为着梦想一直奋斗 坚持 初始 在星巴克工作半 偶然一个机会 与合伙人决定开一间小小咖啡馆 就这样The Place渐渐的成形了 不知不觉中 The Place已经试运营三个月了 只希望趁这个小小的机 感谢这一路走来朋友们的支持 给予The Place的认可及建议 每次看见朋友们 将The Place分享给身边的朋友 带着爱的眼光欣赏着The Place里的每一样东西 懂得我们的用心 为我们的用心而感动时 我们更感动 同时我们也发现 朋友们比我们更能发现The Place的美 下面分享一些朋友们的分享给大家 再次感 每一位到访过The Place的朋友---- 小佳 ";
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
