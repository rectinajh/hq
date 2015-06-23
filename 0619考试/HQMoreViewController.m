//
//  HQMoreViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQMoreViewController.h"
#import "HQAccountModel.h"

@interface HQMoreViewController ()
@property (nonatomic, strong) UISlider *slider;
@end

@implementation HQMoreViewController

- (UISlider *)slider{
    if (_slider == nil) {
        _slider = [[UISlider alloc] init];
        _slider.minimumTrackTintColor = [UIColor colorWithRed:136 / 255.0 green:15 / 255.0 blue:17 / 255.0 alpha:1];
        _slider.maximumTrackTintColor = [UIColor grayColor];
        _slider.minimumValue = 0;
        _slider.maximumValue = 30;
        [_slider addTarget:self action:@selector(AdjustTheVolume:) forControlEvents:UIControlEventValueChanged];
    }
    return _slider;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"更多";
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:136 / 255.0 green:15 / 255.0 blue:17 / 255.0 alpha:1]];
        [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
        
        UIImage *image1 = [UIImage imageNamed:@"icon_menu_ihave_press"];
        UIImage *image2 = [UIImage imageNamed:@"icon_menu_ihave_selected"];
        
        UITabBarItem *bar = [[UITabBarItem alloc] initWithTitle:@"更多" image:image1 selectedImage:image2];
        self.tabBarItem = bar;
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 250) / 2, 64, 250, 200)];
    imageview.image = [UIImage imageNamed:@"logo3"];
    [self.view addSubview:imageview];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 250) / 2, CGRectGetMaxY(imageview.frame), 250, 30)];
    lable.text = @"vision 1.0 by HQ";
    lable.textColor = [UIColor grayColor];
    lable.textAlignment = NSTextAlignmentCenter;
    lable.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:lable];
    
    UILabel *nameLable = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 250) / 2, CGRectGetMaxY(lable.frame) + 10, 100, 30)];
    nameLable.text = @"用户名：";
    nameLable.textColor = [UIColor blackColor];
    nameLable.textAlignment = NSTextAlignmentRight;
    nameLable.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:nameLable];
    
    UILabel *nameTextLable = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(nameLable.frame) + 10, CGRectGetMaxY(lable.frame) + 10, 100, 30)];
    nameTextLable.text = [HQAccountModel sharedAccountModel].name;
    nameTextLable.textColor = [UIColor blackColor];
    nameTextLable.textAlignment = NSTextAlignmentLeft;
    nameTextLable.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:nameTextLable];

    UILabel *pawLable = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 250) / 2, CGRectGetMaxY(nameLable.frame) + 10, 100, 30)];
    pawLable.text = @"密码：";
    pawLable.textColor = [UIColor blackColor];
    pawLable.textAlignment = NSTextAlignmentRight;
    pawLable.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:pawLable];

    UILabel *pawTextLable = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(pawLable.frame) + 10, CGRectGetMaxY(nameLable.frame) + 10, 100, 30)];
    pawTextLable.text = [HQAccountModel sharedAccountModel].passWord;
    pawTextLable.textColor = [UIColor blackColor];
    pawTextLable.textAlignment = NSTextAlignmentLeft;
    pawTextLable.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:pawTextLable];
    
    UILabel *soundLable = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 250) / 2, CGRectGetMaxY(pawTextLable.frame) + 10, 100, 30)];
    soundLable.text = @"音量调节：";
    soundLable.textColor = [UIColor blackColor];
    soundLable.textAlignment = NSTextAlignmentRight;
    soundLable.font = [UIFont systemFontOfSize:17];
    [self.view addSubview:soundLable];
    
    self.slider.frame = CGRectMake(CGRectGetMaxX(soundLable.frame) + 10, CGRectGetMaxY(pawTextLable.frame) + 10, 150, 30);
    [self.view addSubview:self.slider];
    

}

- (void)AdjustTheVolume:(UISlider *)slider{
    if ([self.delegate respondsToSelector:@selector(moreViewController:)]) {
        [self.delegate moreViewController:slider];
    }
}




@end
