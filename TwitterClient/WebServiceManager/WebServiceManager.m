//
//  WebServiceManager.m
//  TwitterClient
//
//  Created by Nada Gamal on 6/30/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import "WebServiceManager.h"

@implementation WebServiceManager
{
    AFHTTPSessionManager *manager;
}
+ (instancetype)sharedInstance {
    
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
        [_sharedInstance loadAFNetwotkingSettings];
    });
    return _sharedInstance;
}

-(void)loadAFNetwotkingSettings{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    AFJSONResponseSerializer * jsonReponseSerializer = [AFJSONResponseSerializer serializer];
    jsonReponseSerializer.acceptableContentTypes = nil;
    
}

-(void)getDataWithURLString:(NSString *)urlString andParameters:(id)parameters WithObjectName:(NSString *)obj success:(void (^)(id result))success failure:(void (^)(NSError *error))failure {
    
    [manager GET:urlString parameters:parameters progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        
        id object = NSClassFromString(obj);
        
        object  = [object initWithDictionary:(NSDictionary*)responseObject];

        if (object == nil) {
            [[NSNotificationCenter defaultCenter]
             postNotificationName:@"NoDataRecived"
             object:nil];
        }
        else{
            success(object);
        }
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        failure(error);
    }];
    
 
    
}
@end
