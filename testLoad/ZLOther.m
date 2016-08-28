//
//  ZLOther.m
//  testLoad
//
//  Created by zhaoliang on 16/8/28.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import "ZLOther.h"

@implementation ZLOther

+ (void)load {
    NSLog(@"ZLOther");
    [ZLParse registorWithKey:@"Other" class:[ZLOther class]];
}

@end
