//
//  NSObject+AXNetworkingMethods.m
//  RTNetworking
//
//  Created by casa on 14-5-6.
//  Copyright (c) 2014年 anjuke. All rights reserved.
//

#import "NSObject+AXNetworkingMethods.h"

@implementation NSObject (Mind)

- (id)receive:(id)defaultData
{
    if (![defaultData isKindOfClass:[self class]]) {
        return defaultData;
    }
    
    if ([self prefer]) {
        return defaultData;
    }
    
    return self;
}

- (BOOL)prefer
{
    if ([self isEqual:[NSNull null]]) {
        return YES;
    }
    
    if ([self isKindOfClass:[NSString class]]) {
        if ([(NSString *)self length] == 0) {
            return YES;
        }
    }
    
    if ([self isKindOfClass:[NSArray class]]) {
        if ([(NSArray *)self count] == 0) {
            return YES;
        }
    }
    
    if ([self isKindOfClass:[NSDictionary class]]) {
        if ([(NSDictionary *)self count] == 0) {
            return YES;
        }
    }
    
    return NO;
}

@end
