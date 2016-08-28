//
//  NSObject+Parse.h
//  testLoad
//
//  Created by zhaoliang on 16/8/28.
//  Copyright © 2016年 liangzhimy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Parse)

+ (void)registorWithKey:(NSString *)key class:(Class)class;
@end
