//
//  WebServiceManager.m
//  TwitterClient
//
//  Created by Nada Gamal on 6/30/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import "WebServiceManager.h"

@implementation WebServiceManager

-(void)getDataWithURLString:(NSString *)urlString andParameters:(id)parameters andParserType:(ParserType)parserType WithObjectName:(NSString *)obj success:(void (^)(id result))success failure:(void (^)(NSError *error))failure {
    
    AFHTTPRequestOperation *operation =[manager GET:urlString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        id object = NSClassFromString(obj);
        
        object  = [object modelObjectWithDictionary:(NSDictionary*)responseObject];

        if (object == nil) {
            [[NSNotificationCenter defaultCenter]
             postNotificationName:@"NoDataRecived"
             object:nil];
        }
        else{
            success(object);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
    
 
    
}
@end
