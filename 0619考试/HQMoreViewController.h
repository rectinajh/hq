//
//  HQMoreViewController.h
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//
#import <UIKit/UIKit.h>
@protocol HQMoreViewControllerDelegate <NSObject>

- (void)moreViewController:(UISlider *)slider;

@end

@interface HQMoreViewController : UIViewController
@property (nonatomic, weak) id<HQMoreViewControllerDelegate> delegate;
@end
