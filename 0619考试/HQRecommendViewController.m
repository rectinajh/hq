//
//  HQRecommendViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQRecommendViewController.h"
#import "HQStarBucksViewController.h"
#import "HQTheplaceViewController.h"
#import "HQGoodwoodsViewController.h"
#import "HQWinshareViewController.h"
#import "HQManViewController.h"

@interface HQRecommendViewController ()
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation HQRecommendViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"推荐";
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:136 / 255.0 green:15 / 255.0 blue:17 / 255.0 alpha:1]];
        [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
        UIImage *image1 = [UIImage imageNamed:@"icon_menu_x_press"];
        UIImage *image2 = [UIImage imageNamed:@"icon_menu_x_selected"];
        
        UITabBarItem *bar = [[UITabBarItem alloc] initWithTitle:@"推荐" image:image1 selectedImage:image2];
        self.tabBarItem = bar;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    NSArray *array = [NSArray array];
    array = @[@"theplace_coffee_logo.png", @"starbucks_coffee_logo.png", @"man_coffee_logo.png", @"goodwoods_coffee_logo.png", @"winshare_logo.png"];
//    CGFloat appW = self.view.frame.size.width / 3 - 20;
    CGFloat appW = 80;
    CGFloat appH = appW;
    CGFloat magin = (self.view.frame.size.width - 3 * 80) / 4;
    for (int i = 0; i < 5; i ++) {
        
        UIButton *but = [[UIButton alloc] initWithFrame:CGRectMake((i % 3 * (appW + magin) + magin), i / 3 * (appH + magin) + 74, appW, appH)];
        [but setBackgroundImage:[UIImage imageNamed:array[i]] forState:UIControlStateNormal];
        but.tag = i + 50;
        [but addTarget:self action:@selector(jump:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:but];
    }

}

- (void)jump:(UIButton *)button{
    if (button.tag == 0) {
        [self.navigationController pushViewController:[[HQTheplaceViewController alloc] init]animated:YES];
    }
    if (button.tag == 1) {
        [self.navigationController pushViewController:[[HQStarBucksViewController alloc] init]animated:YES];
    }
    if (button.tag == 2) {
        [self.navigationController pushViewController:[[HQManViewController alloc] init]animated:YES];
    }
    if (button.tag == 3) {
        [self.navigationController pushViewController:[[HQGoodwoodsViewController alloc] init]animated:YES];
    }
    if (button.tag == 4) {
        [self.navigationController pushViewController:[[HQWinshareViewController alloc] init]animated:YES];
    }

    
}

- (void)blockAnimation {
    
    static NSInteger i = 0;
    
    UIButton *button = (UIButton *)[self.view viewWithTag:i % 5 + 50];
    
    //设置button旋转动画
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:button cache:YES];
        
    } completion:^(BOOL finished) {
        
    }];
    
    i++;
}

- (void)viewWillAppear:(BOOL)animated {
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(blockAnimation) userInfo:nil repeats:YES];
}


- (void)viewDidDisappear:(BOOL)animated {
    
    [self.timer invalidate];
    self.timer = nil;
    
}


@end
