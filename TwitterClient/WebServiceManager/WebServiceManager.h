//
//  WebServiceManager.h
//  TwitterClient
//
//  Created by Nada Gamal on 6/30/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "AFHTTPSessionManager.h"
#import "FollowersList.h"
@interface WebServiceManager : NSObject
-(void)getDataWithURLString:(NSString *)urlString andParameters:(id)parameters WithObjectName:(NSString *)obj success:(void (^)(id result))success failure:(void (^)(NSError *error))failure;
+ (instancetype)sharedInstance;
@end
