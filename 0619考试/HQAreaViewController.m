//
//  HQAreaViewController.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQAreaViewController.h"
#import "HQTableViewCell.h"
#import "HQWidthAlleyViewController.h"
#import "HQDuFuThatchedCottageViewController.h"
#import "HQHappyViewController.h"
#import "HQWuHouCiViewController.h"
#include "HQPandaViewController.h"
#import "HQJinLiViewController.h"
@interface HQAreaViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *array;
@end

@implementation HQAreaViewController
- (NSArray *)array{
    if (_array == nil) {
        _array = @[@{@"icon" : @"宽窄巷子.png",
                     @"name" : @"宽窄巷子",
                     @"phoneNumber" : @"028-0000-0000",
                     @"orientation" : @"成都市蜀都大道西端金河宾馆北面"},
                   @{@"icon" : @"杜甫草堂.png",
                     @"name" : @"杜甫草堂",
                     @"phoneNumber" : @"028-0000-0001",
                     @"orientation" : @"成都市青华路38号，成都市外西草堂路"},
                   @{@"icon" : @"欢乐谷.png",
                     @"name" : @"欢乐谷",
                     @"phoneNumber" : @"028-0000-0002",
                     @"orientation" : @"成都市金牛区西华大道16号"},
                   @{@"icon" : @"武侯祠.png",
                     @"name" : @"武侯祠",
                     @"phoneNumber" : @"028-0000-0003",
                     @"orientation" : @"四川省成都市南门武侯祠大街"},
                   @{@"icon" : @"熊猫基地.png",
                     @"name" : @"熊猫基地",
                     @"phoneNumber" : @"028-0000-0004",
                     @"orientation" : @"成都北郊斧头山"},
                   @{@"icon" : @"锦里.png",
                     @"name" : @"锦里",
                     @"phoneNumber" : @"028-0000-0005",
                     @"orientation" : @"成都武侯祠大街中段"}
                   ];
    }
    return _array;
}

- (UITableView *)tableView{
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"景点";
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:136 / 255.0 green:15 / 255.0 blue:17 / 255.0 alpha:1]];
        [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
        
        [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
//        [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17]} forState:UIControlStateNormal];

        UIImage *image1 = [UIImage imageNamed:@"icon_menu_profile_press"];
        UIImage *image2 = [UIImage imageNamed:@"icon_menu_profile_selected"];
        
        UITabBarItem *bar = [[UITabBarItem alloc] initWithTitle:@"景点" image:image1 selectedImage:image2];
        
        self.tabBarItem = bar;
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

    self.tableView.rowHeight = 120;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HQTableViewCell *cell = [HQTableViewCell tableViewCell:tableView];
    cell.iconImage.image = [UIImage imageNamed:self.array[indexPath.row][@"icon"]];
    cell.nameLable.text = self.array[indexPath.row][@"name"];
    cell.phoneNumber.text = self.array[indexPath.row][@"phoneNumber"];
    cell.orientationLable.text = self.array[indexPath.row][@"orientation"];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[[HQWidthAlleyViewController alloc] init] animated:YES];
    }
    if (indexPath.row == 1) {
        [self.navigationController pushViewController:[[HQDuFuThatchedCottageViewController alloc] init] animated:YES];
    }
    if (indexPath.row == 2) {
        [self.navigationController pushViewController:[[HQHappyViewController alloc] init] animated:YES];
    }
    if (indexPath.row == 3) {
        [self.navigationController pushViewController:[[HQWuHouCiViewController alloc] init] animated:YES];
    }
    if (indexPath.row == 4) {
        [self.navigationController pushViewController:[[HQPandaViewController alloc] init] animated:YES];
    }
    if (indexPath.row == 5) {
        [self.navigationController pushViewController:[[HQJinLiViewController alloc] init] animated:YES];
    }
}


@end
