//
//  HQWinshareViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQWinshareViewController.h"

@interface HQWinshareViewController ()

@end

@implementation HQWinshareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 350)];
    imageView.image = [UIImage imageNamed:@"winshare_detail"];
    [self.view addSubview:imageView];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 360, self.view.frame.size.width, 250)];
    lable.text = @"新华文轩旗下子品牌“轩客会·格调书店”，以“都市文化客厅”为打造目标。“在浓厚的生活艺术氛围中，读者不但再无老式书店一座难求的烦恼，还可以在店内书吧品尝进口红茶、西式茶点，享受“慢读生活新体验”。新华文轩计划在3年内投入1.5亿元在全省范围内建立100家类似书店。";
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
