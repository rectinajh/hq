//
//  HQPlayAudioTool.h
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HQPlayAudioTool : NSObject
/**
 *  播放音效
 *
 *  @param filename 音效文件名
 */
+ (void)playSound:(NSString *)filename;

/**
 *  销毁音效
 *
 *  @param filename 音效文件名
 */
+ (void)disposeSound:(NSString *)filename;

@end
