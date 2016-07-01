//
//	FollowersList.h
//
//	Create by Nada Gamal on 1/7/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "User.h"

@interface FollowersList : NSObject

@property (nonatomic, assign) double nextCursor;
@property (nonatomic, strong) NSString * nextCursorStr;
@property (nonatomic, assign) NSInteger previousCursor;
@property (nonatomic, strong) NSString * previousCursorStr;
@property (nonatomic, strong) NSArray * users;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end