//
//	FollowersList.m
//
//	Create by Nada Gamal on 30/6/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "FollowersList.h"

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


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.users != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(User * usersElement in self.users){
			[dictionaryElements addObject:[usersElement toDictionary]];
		}
		dictionary[kFollowersListUsers] = dictionaryElements;
	}
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	if(self.users != nil){
		[aCoder encodeObject:self.users forKey:kFollowersListUsers];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.users = [aDecoder decodeObjectForKey:kFollowersListUsers];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	FollowersList *copy = [FollowersList new];

	copy.users = [self.users copyWithZone:zone];

	return copy;
}
@end