//
//	FollowersList.m
//
//	Create by Nada Gamal on 1/7/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "FollowersList.h"

NSString *const kFollowersListNextCursor = @"next_cursor";
NSString *const kFollowersListNextCursorStr = @"next_cursor_str";
NSString *const kFollowersListPreviousCursor = @"previous_cursor";
NSString *const kFollowersListPreviousCursorStr = @"previous_cursor_str";
NSString *const kFollowersListUsers = @"users";

@interface FollowersList ()
@end
@implementation FollowersList




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if(![dictionary[kFollowersListNextCursor] isKindOfClass:[NSNull class]]){
        self.nextCursor = [dictionary[kFollowersListNextCursor] doubleValue];
    }
    
    if(![dictionary[kFollowersListNextCursorStr] isKindOfClass:[NSNull class]]){
        self.nextCursorStr = dictionary[kFollowersListNextCursorStr];
    }
    if(![dictionary[kFollowersListPreviousCursor] isKindOfClass:[NSNull class]]){
        self.previousCursor = [dictionary[kFollowersListPreviousCursor] integerValue];
    }
    
    if(![dictionary[kFollowersListPreviousCursorStr] isKindOfClass:[NSNull class]]){
        self.previousCursorStr = dictionary[kFollowersListPreviousCursorStr];
    }
    if(dictionary[kFollowersListUsers] != nil && [dictionary[kFollowersListUsers] isKindOfClass:[NSArray class]]){
        NSArray * usersDictionaries = dictionary[kFollowersListUsers];
        NSMutableArray * usersItems = [NSMutableArray array];
        for(NSDictionary * usersDictionary in usersDictionaries){
            User * usersItem = [[User alloc] initWithDictionary:usersDictionary];
            [usersItems addObject:usersItem];
        }
        self.users = usersItems;
    }
    return self;
}
@end