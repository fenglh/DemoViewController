//
//  NSDictionary+AXNetworkingMethods.h
//  RTNetworking
//
//  Created by casa on 14-5-6.
//  Copyright (c) 2014年 anjuke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Mind)

- (NSString *)base:(BOOL)isForSignature;
/** 字典变json */
- (NSString *)describe;
- (NSArray *)inform:(BOOL)isForSignature;

/**
 Convert dictionary to json string. return nil if an error occurs.
 */
- (NSString *)train;
@end
