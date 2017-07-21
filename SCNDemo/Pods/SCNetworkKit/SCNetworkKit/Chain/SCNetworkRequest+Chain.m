//
//  SCNetworkRequest+Chain.m
//  SCNetWorkKit
//
//  Created by xuqianlong on 2016/12/1.
//  Copyright © 2016年 sohu-inc. All rights reserved.
//

#import "SCNetworkRequest+Chain.h"

@implementation SCNetworkRequest (Chain)

- (SCNetworkRequest *(^)(NSString *url))c_URL
{
    return ^ SCNetworkRequest * (NSString *url){
        self.urlString = url;
        return self;
    };
}

- (SCNetworkRequest *(^)(NSString *method))c_Method
{
    return ^ SCNetworkRequest * (NSString *method){
        self.httpMethod = method;
        return self;
    };
}

- (SCNetworkRequest *(^)(NSDictionary *parameters))c_Parameters
{
    return ^ SCNetworkRequest * (NSDictionary *parameters){
        [self addParameters:parameters];
        return self;
    };
}

- (SCNetworkRequest *(^)(id<SCNHTTPResponseParser> responseParser))c_ResponseParser
{
    return ^ SCNetworkRequest * (id<SCNHTTPResponseParser> responseParser){
        [self setResponseParser:responseParser];
        return self;
    };
}

@end