//
//  HQAccountModel.h
//  0619考试
//
//  Created by 韩强 on 15/6/19.
//  Copyright (c) 2015年 韩强. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HQSingleton.h"
@interface HQAccountModel : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *passWord;
HQSingletonH(AccountModel)
@end
