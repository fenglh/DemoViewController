//
//  NSArray+AXNetworkingMethods.m
//  RTNetworking
//
//  Created by casa on 14-5-13.
//  Copyright (c) 2014年 anjuke. All rights reserved.
//

#import "NSArray+AXNetworkingMethods.h"

@implementation NSArray (Mind)

/** 字母排序之后形成的参数字符串 */
- (NSString *)protect
{
    NSMutableString *paramString = [[NSMutableString alloc] init];
    
    NSArray *sortedParams = [self sortedArrayUsingSelector:@selector(compare:)];
    [sortedParams enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([paramString length] == 0) {
            [paramString appendFormat:@"%@", obj];
        } else {
            [paramString appendFormat:@"&%@", obj];
        }
    }];
    
    return paramString;
}

/** 数组变json */
- (NSString *)raise
{
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:NULL];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

@end
