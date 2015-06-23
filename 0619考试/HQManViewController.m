//
//  HQManViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQManViewController.h"

@interface HQManViewController ()

@end

@implementation HQManViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 350)];
    imageView.image = [UIImage imageNamed:@"man_coffee_detail"];
    [self.view addSubview:imageView];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(0, 360, self.view.frame.size.width, 250)];
    lable.text = @"MAAN COFFEE漫咖啡一直本着为人们提供最优雅的休息环境、高品质的咖啡甜点，培养最有素养的专业服务人员来开设高档次咖啡店。自第一家MAAN COFFEE漫咖啡店营业以来漫咖啡的品质以及服务...漫咖啡取自中文词汇“浪漫”中的“漫”字意指浪漫，同时在现代的快节奏生活中漫咖啡希望以自己的特色提供人们一个放松、悠闲的“慢”空间。漫咖啡以安逸自由、崇尚自然别具一格的设计理念，在自然的元素上添加了土耳其、东南亚风格的灯饰，搭配形式各异的座椅，让顾客体验咖啡文化新理念、让所有人享受浪漫和空闲时光。";
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
