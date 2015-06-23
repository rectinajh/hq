//
//  HQPlayAudioTool.m
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import "HQPlayAudioTool.h"
#import <AVFoundation/AVFoundation.h>

@implementation HQPlayAudioTool

// 字典: filename作为key, soundID作为value
// 存放所有的音频ID
static NSMutableDictionary *_soundIDDict;
+ (void)initialize
{
    _soundIDDict = [NSMutableDictionary dictionary];
}

+ (void)playSound:(NSString *)filename
{
    if (!filename) return;
    
    // 1.从字典中取出soundID
    SystemSoundID soundID = (unsigned)[_soundIDDict[filename] unsignedLongValue];
    if (!soundID) { // 创建
        // 加载音效文件
        NSURL *url = [[NSBundle mainBundle] URLForResource:filename withExtension:nil];
        
        if (!url) return;
        
        // 创建音效ID
        AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &soundID);
        
        // 放入字典
        _soundIDDict[filename] = @(soundID);
    }
    
    // 2.播放
    AudioServicesPlaySystemSound(soundID);
}

+ (void)disposeSound:(NSString *)filename
{
    if (!filename) return;
    
    SystemSoundID soundID = (unsigned)[_soundIDDict[filename] unsignedLongValue];
    if (soundID) {
        // 销毁音效ID
        AudioServicesDisposeSystemSoundID(soundID);
        
        // 从字典中移除
        [_soundIDDict removeObjectForKey:filename];
    }
}

@end
