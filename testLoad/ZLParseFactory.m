//
//  ZLParseFactory.m
//  testLoad
//
//  Created by zhaoliang on 16/8/28.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import "ZLParseFactory.h"



static NSMutableDictionary *registDictinaory = nil;

@implementation ZLParseFactory

+ (void)load {
    NSLog(@"%@", [self class]);
}

+ (void)registorWithKey:(NSString *)key class:(Class)class {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        registDictinaory = [[NSMutableDictionary alloc] init];
    });
    
    if (registDictinaory[key]) {
        NSLog(@"Has registered key: %@", key);
        assert(0);
    }
    
    registDictinaory[key] = class;
    NSLog(@"%@", registDictinaory);
}

+ (id<ZLParseObject>)parseObject:(NSDictionary *)dictionary {
    return nil;
}

@end
