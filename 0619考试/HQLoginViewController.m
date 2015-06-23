//
//  HQLoginViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQLoginViewController.h"
#import "MBProgressHUD+MJ.h"
#import "HQPlayAudioTool.h"
#import "HQHomeViewController.h"
#import "HQMoreViewController.h"
#import "HQRecommendViewController.h"
#import "HQAreaViewController.h"
#import "HQAccountModel.h"
#define HQLoginViewPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"loginSing.archive"]
@interface HQLoginViewController ()
@property (nonatomic, strong) HQMoreViewController *mvc;
@end

@implementation HQLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 250) / 2, 64, 250, 200)];
    imageview.image = [UIImage imageNamed:@"logo3"];
    [self.view addSubview:imageview];
    
    //    用户登录的账号输入框
    self.name = [[UITextField alloc] initWithFrame:CGRectMake(30, 284, self.view.frame.size.width - 60, 40)];
    self.name.borderStyle = UITextBorderStyleRoundedRect;
    self.name.placeholder = @"请输入用户名";
    self.name.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview:self.name];
    //    用户登录的密码输入框
    self.passWord = [[UITextField alloc] initWithFrame:CGRectMake(30, 344, self.view.frame.size.width - 60, 40)];
    self.passWord.placeholder = @"请输入密码";
    self.passWord.secureTextEntry = YES;
    self.passWord.borderStyle = UITextBorderStyleRoundedRect;
    self.passWord.clearButtonMode = UITextFieldViewModeWhileEditing;

    [self.view addSubview:self.passWord];
    
    //    登录按钮的添加
    UIButton *login = [[UIButton alloc] initWithFrame:CGRectMake(40, 400, self.view.frame.size.width - 80, 40)];
    [login setTitle:@"登录" forState:UIControlStateNormal];
    [login.layer setMasksToBounds:YES];
    [login.layer setCornerRadius:8];
    login.backgroundColor = [UIColor colorWithRed:136 / 255.0 green:15 / 255.0 blue:17 / 255.0 alpha:1];
    [login addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:login];

}

- (void)login{
    if (self.name.text.length == 0) {
        [HQPlayAudioTool playSound:@"music_fail.mp3"];
        [MBProgressHUD showError:@"请输入账号"];
        return;
    }
    if (self.passWord.text.length == 0) {
        [HQPlayAudioTool playSound:@"music_fail.mp3"];

        [MBProgressHUD showError:@"请输入密码"];
        return;
    }
    if (![self.name.text isEqualToString:@"admin"]) {
        [HQPlayAudioTool playSound:@"music_fail.mp3"];

        [MBProgressHUD showError:@"账号输入错误"];
        return;
    }
    if (![self.passWord.text isEqualToString:@"123456"]) {
        [HQPlayAudioTool playSound:@"music_fail.mp3"];

        [MBProgressHUD showError:@"密码输入错误"];
        return;
    }
    if ([self.name.text isEqualToString:@"admin"] && [self.passWord.text isEqualToString:@"123456"]) {
        [HQPlayAudioTool playSound:@"music_success.caf"];
        UITabBarController *tabbarC = [[UITabBarController alloc] init];
        tabbarC.tabBar.tintColor = [UIColor whiteColor];
        tabbarC.tabBar.barTintColor = [UIColor colorWithRed:136 / 255.0 green:15 / 155.0 blue:17 / 255.0 alpha:1];
        HQHomeViewController *hvc = [[HQHomeViewController alloc] init];
        
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:hvc];
        __strong HQRecommendViewController *rvc = [[HQRecommendViewController alloc] init];
        UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:rvc];
        HQAreaViewController *avc = [[HQAreaViewController alloc] init];
        UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:avc];
        self.mvc = [[HQMoreViewController alloc] init];
        UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:self.mvc];
        
         self.mvc.delegate = (id)hvc;
        tabbarC.viewControllers = @[nav, nav1, nav2, nav3];
        [self presentViewController:tabbarC animated:YES completion:nil];
        [HQAccountModel sharedAccountModel].name = self.name.text;
        [HQAccountModel sharedAccountModel].passWord = self.passWord.text;
        [NSKeyedArchiver archiveRootObject:[HQAccountModel sharedAccountModel] toFile:HQLoginViewPath];

    }
}
@end
