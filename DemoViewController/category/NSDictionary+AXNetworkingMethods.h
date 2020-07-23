//
//  NSDictionary+AXNetworkingMethods.h
//  RTNetworking
//
//  Created by casa on 14-5-6.
//  Copyright (c) 2014年 anjuke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (AXNetworkingMethods)

- (NSString *)AIF_urlParamsStringSignature:(BOOL)isForSignature;
/** 字典变json */
- (NSString *)AIF_jsonString;
- (NSArray *)AIF_transformedUrlParamsArraySignature:(BOOL)isForSignature;

/**
 Convert dictionary to json string. return nil if an error occurs.
 */
- (NSString *)jsonStringEncoded;
@end
