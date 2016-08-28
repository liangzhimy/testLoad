//
//  ZLParse.m
//  testLoad
//
//  Created by zhaoliang on 16/8/28.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import "ZLParse.h"
#import "NSObject+Parse.h"
#import "ZLParseFactory.h"
#import "ZLParseFactorAbc.h"

static NSMutableDictionary *parseMapping;
@implementation ZLParse

+ (void)load {
    NSLog(@"ZLParse");
    parseMapping = [[NSMutableDictionary alloc] init];
//    [ZLParseFactory registorWithKey:@"Parse" class:[ZLParse class]];
//    [NSObject registorWithKey:@"Test" class:[ZLParse class]];
}

+ (void)registorWithKey:(NSString *)key class:(Class)class {
    if (parseMapping[key]) {
        NSLog(@"Has registered key: %@", key);
        assert(0);
    }
    
    @synchronized (parseMapping) {
        parseMapping[key] = class;
    }
    NSLog(@"%@", parseMapping);
}

- (id)parse:(NSDictionary *)dictionary {
//    NSString *key = nil;
    id<ZLParseObject> parseObject = [ZLParseFactory parseObject:dictionary];
    if (parseObject) {
        [parseObject parse:dictionary];
    } else {
        assert(0);
    }
    
    return nil;
}

- (id)parse {
    return nil;
}

@end




