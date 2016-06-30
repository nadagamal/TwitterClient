//
//	FollowersList.h
//
//	Create by Nada Gamal on 30/6/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>
#import "User.h"

@interface FollowersList : NSObject

@property (nonatomic, strong) NSArray * users;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end