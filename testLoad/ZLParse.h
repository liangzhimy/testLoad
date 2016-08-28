//
//  ZLParse.h
//  testLoad
//
//  Created by zhaoliang on 16/8/28.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZLParseObject.h"

@interface ZLParse : NSObject <ZLParseObject>

+ (void)registorWithKey:(NSString *)key class:(Class)class;

@end
