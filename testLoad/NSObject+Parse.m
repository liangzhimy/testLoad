//
//  NSObject+Parse.m
//  testLoad
//
//  Created by zhaoliang on 16/8/28.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import "NSObject+Parse.h"



static NSMutableDictionary *mapping = nil;
@implementation NSObject (Parse)

+ (void)load {
//    mapping = [[NSMutableDictionary alloc] init];
    NSLog(@"NSobject parse");
}

+ (void)registorWithKey:(NSString *)key class:(Class)class {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mapping = [[NSMutableDictionary alloc] init];
    });
    
    @synchronized (mapping) {
        if (mapping[key]) {
            NSLog(@"Has registered key: %@", key);
            assert(0);
        }
        mapping[key] = class;
    }
    NSLog(@"%@", mapping);
}

@end
