//
//  HQHomeViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQHomeViewController.h"
#import "HQMoreViewController.h"
@import AVFoundation;
@interface HQHomeViewController () <HQMoreViewControllerDelegate>
@property (nonatomic, strong) AVAudioPlayer *player;
@end

@implementation HQHomeViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"乐行于蜀";
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:136 / 255.0 green:15 / 255.0 blue:17 / 255.0 alpha:1]];
        [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
        
        UIImage *image1 = [UIImage imageNamed:@"icon_menu_hp_press"];
        UIImage *image2 = [UIImage imageNamed:@"icon_menu_hp_selected"];
        
        UITabBarItem *bar = [[UITabBarItem alloc] initWithTitle:@" 乐行于蜀" image:image1 selectedImage:image2];
        self.tabBarItem = bar;
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"background.mp3" withExtension:nil];
        self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        [self.player prepareToPlay];
        [self.player play];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.player.numberOfLoops = MAXFLOAT;
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200)];
    //    imageView.image = [UIImage imageNamed:@"首页1.png"];
    imageView.animationImages = @[[UIImage imageNamed:@"首页1.png"], [UIImage imageNamed:@"首页2.png"], [UIImage imageNamed:@"首页3.png"]];
    imageView.animationDuration = 6;
    [imageView startAnimating];
    [scrollView addSubview:imageView];
    [self.view addSubview:scrollView];
    
    UILabel *lable1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 150)];
    lable1.text = @"成都，简称“蓉”，四川省省会，副省级市，国家区域中心城市（西南），1993年被国务院确定为西南地区的科技、商贸、金融中心和交通及通信枢纽，综合实力西部第一。";
    lable1.numberOfLines = 0;
    [scrollView addSubview:lable1];
    
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 350, self.view.frame.size.width, 200)];
    imageView1.image = [UIImage imageNamed:@"首页1.png"];
    [scrollView addSubview:imageView1];
    
    UILabel *lable2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 550, self.view.frame.size.width, 150)];
    lable2.text = @"成都位于中国华西地区东部，西南地区最大平原——成都平原腹地，境内地势平坦、河网纵横、物产丰富、水系发达，自古就有“天府之国”的美誉，是国家首批历史文化名城和中国最佳旅游城市。";
    lable2.numberOfLines = 0;
    [scrollView addSubview:lable2];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 700, self.view.frame.size.width, 200)];
    imageView2.image = [UIImage imageNamed:@"首页2.png"];
    [scrollView addSubview:imageView2];
    
    UILabel *lable3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 900, self.view.frame.size.width, 150)];
    lable3.text = @"成都有着4500余年的文明史，2600年左右的建城史。三国蜀汉、五代前后蜀及北宋李顺、明末张献忠大西等割据政权先后在此建都，唐朝和中华民国时曾作为临时首都而存在。早在北宋年间成都人联合发行了世界最早的纸币“交子”，官府在成都设立了世界最早的管理储蓄银行“交子务”。";
    lable3.numberOfLines = 0;
    [scrollView addSubview:lable3];
    
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 1050, self.view.frame.size.width, 200)];
    imageView3.image = [UIImage imageNamed:@"首页3.png"];
    [scrollView addSubview:imageView3];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 1250);
}

- (void)moreViewController:(UISlider *)slider{
    self.player.volume = slider.value;
}

@end
