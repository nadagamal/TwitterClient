//
//	User.m
//
//	Create by Nada Gamal on 30/6/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "User.h"

NSString *const kUserContributorsEnabled = @"contributors_enabled";
NSString *const kUserCreatedAt = @"created_at";
NSString *const kUserDefaultProfile = @"default_profile";
NSString *const kUserDefaultProfileImage = @"default_profile_image";
NSString *const kUserDescriptionField = @"description";
NSString *const kUserFavouritesCount = @"favourites_count";
NSString *const kUserFollowRequestSent = @"follow_request_sent";
NSString *const kUserFollowersCount = @"followers_count";
NSString *const kUserFollowing = @"following";
NSString *const kUserFriendsCount = @"friends_count";
NSString *const kUserGeoEnabled = @"geo_enabled";
NSString *const kUserIdField = @"id";
NSString *const kUserIdStr = @"id_str";
NSString *const kUserIsTranslationEnabled = @"is_translation_enabled";
NSString *const kUserIsTranslator = @"is_translator";
NSString *const kUserLang = @"lang";
NSString *const kUserListedCount = @"listed_count";
NSString *const kUserLocation = @"location";
NSString *const kUserMuting = @"muting";
NSString *const kUserName = @"name";
NSString *const kUserNotifications = @"notifications";
NSString *const kUserProfileBackgroundColor = @"profile_background_color";
NSString *const kUserProfileBackgroundImageUrl = @"profile_background_image_url";
NSString *const kUserProfileBackgroundImageUrlHttps = @"profile_background_image_url_https";
NSString *const kUserProfileBackgroundTile = @"profile_background_tile";
NSString *const kUserProfileImageUrl = @"profile_image_url";
NSString *const kUserProfileImageUrlHttps = @"profile_image_url_https";
NSString *const kUserProfileLinkColor = @"profile_link_color";
NSString *const kUserProfileLocation = @"profile_location";
NSString *const kUserProfileSidebarBorderColor = @"profile_sidebar_border_color";
NSString *const kUserProfileSidebarFillColor = @"profile_sidebar_fill_color";
NSString *const kUserProfileTextColor = @"profile_text_color";
NSString *const kUserProfileUseBackgroundImage = @"profile_use_background_image";
NSString *const kUserProtectedField = @"protected";
NSString *const kUserScreenName = @"screen_name";
NSString *const kUserStatusesCount = @"statuses_count";
NSString *const kUserTimeZone = @"time_zone";
NSString *const kUserUrl = @"url";
NSString *const kUserUtcOffset = @"utc_offset";
NSString *const kUserVerified = @"verified";

@interface User ()
@end
@implementation User




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kUserContributorsEnabled] isKindOfClass:[NSNull class]]){
		self.contributorsEnabled = [dictionary[kUserContributorsEnabled] boolValue];
	}

	if(![dictionary[kUserCreatedAt] isKindOfClass:[NSNull class]]){
		self.createdAt = dictionary[kUserCreatedAt];
	}	
	if(![dictionary[kUserDefaultProfile] isKindOfClass:[NSNull class]]){
		self.defaultProfile = [dictionary[kUserDefaultProfile] boolValue];
	}

	if(![dictionary[kUserDefaultProfileImage] isKindOfClass:[NSNull class]]){
		self.defaultProfileImage = [dictionary[kUserDefaultProfileImage] boolValue];
	}

	if(![dictionary[kUserDescriptionField] isKindOfClass:[NSNull class]]){
		self.descriptionField = dictionary[kUserDescriptionField];
	}	
	if(![dictionary[kUserFavouritesCount] isKindOfClass:[NSNull class]]){
		self.favouritesCount = [dictionary[kUserFavouritesCount] integerValue];
	}

	if(![dictionary[kUserFollowRequestSent] isKindOfClass:[NSNull class]]){
		self.followRequestSent = [dictionary[kUserFollowRequestSent] boolValue];
	}

	if(![dictionary[kUserFollowersCount] isKindOfClass:[NSNull class]]){
		self.followersCount = [dictionary[kUserFollowersCount] integerValue];
	}

	if(![dictionary[kUserFollowing] isKindOfClass:[NSNull class]]){
		self.following = [dictionary[kUserFollowing] boolValue];
	}

	if(![dictionary[kUserFriendsCount] isKindOfClass:[NSNull class]]){
		self.friendsCount = [dictionary[kUserFriendsCount] integerValue];
	}

	if(![dictionary[kUserGeoEnabled] isKindOfClass:[NSNull class]]){
		self.geoEnabled = [dictionary[kUserGeoEnabled] boolValue];
	}

	if(![dictionary[kUserIdField] isKindOfClass:[NSNull class]]){
		self.idField = [dictionary[kUserIdField] integerValue];
	}

	if(![dictionary[kUserIdStr] isKindOfClass:[NSNull class]]){
		self.idStr = dictionary[kUserIdStr];
	}	
	if(![dictionary[kUserIsTranslationEnabled] isKindOfClass:[NSNull class]]){
		self.isTranslationEnabled = [dictionary[kUserIsTranslationEnabled] boolValue];
	}

	if(![dictionary[kUserIsTranslator] isKindOfClass:[NSNull class]]){
		self.isTranslator = [dictionary[kUserIsTranslator] boolValue];
	}

	if(![dictionary[kUserLang] isKindOfClass:[NSNull class]]){
		self.lang = dictionary[kUserLang];
	}	
	if(![dictionary[kUserListedCount] isKindOfClass:[NSNull class]]){
		self.listedCount = [dictionary[kUserListedCount] integerValue];
	}

	if(![dictionary[kUserLocation] isKindOfClass:[NSNull class]]){
		self.location = dictionary[kUserLocation];
	}	
	if(![dictionary[kUserMuting] isKindOfClass:[NSNull class]]){
		self.muting = [dictionary[kUserMuting] boolValue];
	}

	if(![dictionary[kUserName] isKindOfClass:[NSNull class]]){
		self.name = dictionary[kUserName];
	}	
	if(![dictionary[kUserNotifications] isKindOfClass:[NSNull class]]){
		self.notifications = [dictionary[kUserNotifications] boolValue];
	}

	if(![dictionary[kUserProfileBackgroundColor] isKindOfClass:[NSNull class]]){
		self.profileBackgroundColor = dictionary[kUserProfileBackgroundColor];
	}	
	if(![dictionary[kUserProfileBackgroundImageUrl] isKindOfClass:[NSNull class]]){
		self.profileBackgroundImageUrl = dictionary[kUserProfileBackgroundImageUrl];
	}	
	if(![dictionary[kUserProfileBackgroundImageUrlHttps] isKindOfClass:[NSNull class]]){
		self.profileBackgroundImageUrlHttps = dictionary[kUserProfileBackgroundImageUrlHttps];
	}	
	if(![dictionary[kUserProfileBackgroundTile] isKindOfClass:[NSNull class]]){
		self.profileBackgroundTile = [dictionary[kUserProfileBackgroundTile] boolValue];
	}

	if(![dictionary[kUserProfileImageUrl] isKindOfClass:[NSNull class]]){
		self.profileImageUrl = dictionary[kUserProfileImageUrl];
	}	
	if(![dictionary[kUserProfileImageUrlHttps] isKindOfClass:[NSNull class]]){
		self.profileImageUrlHttps = dictionary[kUserProfileImageUrlHttps];
	}	
	if(![dictionary[kUserProfileLinkColor] isKindOfClass:[NSNull class]]){
		self.profileLinkColor = dictionary[kUserProfileLinkColor];
	}	
	if(![dictionary[kUserProfileLocation] isKindOfClass:[NSNull class]]){
		self.profileLocation = dictionary[kUserProfileLocation];
	}	
	if(![dictionary[kUserProfileSidebarBorderColor] isKindOfClass:[NSNull class]]){
		self.profileSidebarBorderColor = dictionary[kUserProfileSidebarBorderColor];
	}	
	if(![dictionary[kUserProfileSidebarFillColor] isKindOfClass:[NSNull class]]){
		self.profileSidebarFillColor = dictionary[kUserProfileSidebarFillColor];
	}	
	if(![dictionary[kUserProfileTextColor] isKindOfClass:[NSNull class]]){
		self.profileTextColor = dictionary[kUserProfileTextColor];
	}	
	if(![dictionary[kUserProfileUseBackgroundImage] isKindOfClass:[NSNull class]]){
		self.profileUseBackgroundImage = [dictionary[kUserProfileUseBackgroundImage] boolValue];
	}

	if(![dictionary[kUserProtectedField] isKindOfClass:[NSNull class]]){
		self.protectedField = [dictionary[kUserProtectedField] boolValue];
	}

	if(![dictionary[kUserScreenName] isKindOfClass:[NSNull class]]){
		self.screenName = dictionary[kUserScreenName];
	}	
	if(![dictionary[kUserStatusesCount] isKindOfClass:[NSNull class]]){
		self.statusesCount = [dictionary[kUserStatusesCount] integerValue];
	}

	if(![dictionary[kUserTimeZone] isKindOfClass:[NSNull class]]){
		self.timeZone = dictionary[kUserTimeZone];
	}	
	if(![dictionary[kUserUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kUserUrl];
	}	
	if(![dictionary[kUserUtcOffset] isKindOfClass:[NSNull class]]){
		self.utcOffset = dictionary[kUserUtcOffset];
	}	
	if(![dictionary[kUserVerified] isKindOfClass:[NSNull class]]){
		self.verified = [dictionary[kUserVerified] boolValue];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	dictionary[kUserContributorsEnabled] = @(self.contributorsEnabled);
	if(self.createdAt != nil){
		dictionary[kUserCreatedAt] = self.createdAt;
	}
	dictionary[kUserDefaultProfile] = @(self.defaultProfile);
	dictionary[kUserDefaultProfileImage] = @(self.defaultProfileImage);
	if(self.descriptionField != nil){
		dictionary[kUserDescriptionField] = self.descriptionField;
	}
	dictionary[kUserFavouritesCount] = @(self.favouritesCount);
	dictionary[kUserFollowRequestSent] = @(self.followRequestSent);
	dictionary[kUserFollowersCount] = @(self.followersCount);
	dictionary[kUserFollowing] = @(self.following);
	dictionary[kUserFriendsCount] = @(self.friendsCount);
	dictionary[kUserGeoEnabled] = @(self.geoEnabled);
	dictionary[kUserIdField] = @(self.idField);
	if(self.idStr != nil){
		dictionary[kUserIdStr] = self.idStr;
	}
	dictionary[kUserIsTranslationEnabled] = @(self.isTranslationEnabled);
	dictionary[kUserIsTranslator] = @(self.isTranslator);
	if(self.lang != nil){
		dictionary[kUserLang] = self.lang;
	}
	dictionary[kUserListedCount] = @(self.listedCount);
	if(self.location != nil){
		dictionary[kUserLocation] = self.location;
	}
	dictionary[kUserMuting] = @(self.muting);
	if(self.name != nil){
		dictionary[kUserName] = self.name;
	}
	dictionary[kUserNotifications] = @(self.notifications);
	if(self.profileBackgroundColor != nil){
		dictionary[kUserProfileBackgroundColor] = self.profileBackgroundColor;
	}
	if(self.profileBackgroundImageUrl != nil){
		dictionary[kUserProfileBackgroundImageUrl] = self.profileBackgroundImageUrl;
	}
	if(self.profileBackgroundImageUrlHttps != nil){
		dictionary[kUserProfileBackgroundImageUrlHttps] = self.profileBackgroundImageUrlHttps;
	}
	dictionary[kUserProfileBackgroundTile] = @(self.profileBackgroundTile);
	if(self.profileImageUrl != nil){
		dictionary[kUserProfileImageUrl] = self.profileImageUrl;
	}
	if(self.profileImageUrlHttps != nil){
		dictionary[kUserProfileImageUrlHttps] = self.profileImageUrlHttps;
	}
	if(self.profileLinkColor != nil){
		dictionary[kUserProfileLinkColor] = self.profileLinkColor;
	}
	if(self.profileLocation != nil){
		dictionary[kUserProfileLocation] = self.profileLocation;
	}
	if(self.profileSidebarBorderColor != nil){
		dictionary[kUserProfileSidebarBorderColor] = self.profileSidebarBorderColor;
	}
	if(self.profileSidebarFillColor != nil){
		dictionary[kUserProfileSidebarFillColor] = self.profileSidebarFillColor;
	}
	if(self.profileTextColor != nil){
		dictionary[kUserProfileTextColor] = self.profileTextColor;
	}
	dictionary[kUserProfileUseBackgroundImage] = @(self.profileUseBackgroundImage);
	dictionary[kUserProtectedField] = @(self.protectedField);
	if(self.screenName != nil){
		dictionary[kUserScreenName] = self.screenName;
	}
	dictionary[kUserStatusesCount] = @(self.statusesCount);
	if(self.timeZone != nil){
		dictionary[kUserTimeZone] = self.timeZone;
	}
	if(self.url != nil){
		dictionary[kUserUrl] = self.url;
	}
	if(self.utcOffset != nil){
		dictionary[kUserUtcOffset] = self.utcOffset;
	}
	dictionary[kUserVerified] = @(self.verified);
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
	[aCoder encodeObject:@(self.contributorsEnabled) forKey:kUserContributorsEnabled];	if(self.createdAt != nil){
		[aCoder encodeObject:self.createdAt forKey:kUserCreatedAt];
	}
	[aCoder encodeObject:@(self.defaultProfile) forKey:kUserDefaultProfile];	[aCoder encodeObject:@(self.defaultProfileImage) forKey:kUserDefaultProfileImage];	if(self.descriptionField != nil){
		[aCoder encodeObject:self.descriptionField forKey:kUserDescriptionField];
	}
	[aCoder encodeObject:@(self.favouritesCount) forKey:kUserFavouritesCount];	[aCoder encodeObject:@(self.followRequestSent) forKey:kUserFollowRequestSent];	[aCoder encodeObject:@(self.followersCount) forKey:kUserFollowersCount];	[aCoder encodeObject:@(self.following) forKey:kUserFollowing];	[aCoder encodeObject:@(self.friendsCount) forKey:kUserFriendsCount];	[aCoder encodeObject:@(self.geoEnabled) forKey:kUserGeoEnabled];	[aCoder encodeObject:@(self.idField) forKey:kUserIdField];	if(self.idStr != nil){
		[aCoder encodeObject:self.idStr forKey:kUserIdStr];
	}
	[aCoder encodeObject:@(self.isTranslationEnabled) forKey:kUserIsTranslationEnabled];	[aCoder encodeObject:@(self.isTranslator) forKey:kUserIsTranslator];	if(self.lang != nil){
		[aCoder encodeObject:self.lang forKey:kUserLang];
	}
	[aCoder encodeObject:@(self.listedCount) forKey:kUserListedCount];	if(self.location != nil){
		[aCoder encodeObject:self.location forKey:kUserLocation];
	}
	[aCoder encodeObject:@(self.muting) forKey:kUserMuting];	if(self.name != nil){
		[aCoder encodeObject:self.name forKey:kUserName];
	}
	[aCoder encodeObject:@(self.notifications) forKey:kUserNotifications];	if(self.profileBackgroundColor != nil){
		[aCoder encodeObject:self.profileBackgroundColor forKey:kUserProfileBackgroundColor];
	}
	if(self.profileBackgroundImageUrl != nil){
		[aCoder encodeObject:self.profileBackgroundImageUrl forKey:kUserProfileBackgroundImageUrl];
	}
	if(self.profileBackgroundImageUrlHttps != nil){
		[aCoder encodeObject:self.profileBackgroundImageUrlHttps forKey:kUserProfileBackgroundImageUrlHttps];
	}
	[aCoder encodeObject:@(self.profileBackgroundTile) forKey:kUserProfileBackgroundTile];	if(self.profileImageUrl != nil){
		[aCoder encodeObject:self.profileImageUrl forKey:kUserProfileImageUrl];
	}
	if(self.profileImageUrlHttps != nil){
		[aCoder encodeObject:self.profileImageUrlHttps forKey:kUserProfileImageUrlHttps];
	}
	if(self.profileLinkColor != nil){
		[aCoder encodeObject:self.profileLinkColor forKey:kUserProfileLinkColor];
	}
	if(self.profileLocation != nil){
		[aCoder encodeObject:self.profileLocation forKey:kUserProfileLocation];
	}
	if(self.profileSidebarBorderColor != nil){
		[aCoder encodeObject:self.profileSidebarBorderColor forKey:kUserProfileSidebarBorderColor];
	}
	if(self.profileSidebarFillColor != nil){
		[aCoder encodeObject:self.profileSidebarFillColor forKey:kUserProfileSidebarFillColor];
	}
	if(self.profileTextColor != nil){
		[aCoder encodeObject:self.profileTextColor forKey:kUserProfileTextColor];
	}
	[aCoder encodeObject:@(self.profileUseBackgroundImage) forKey:kUserProfileUseBackgroundImage];	[aCoder encodeObject:@(self.protectedField) forKey:kUserProtectedField];	if(self.screenName != nil){
		[aCoder encodeObject:self.screenName forKey:kUserScreenName];
	}
	[aCoder encodeObject:@(self.statusesCount) forKey:kUserStatusesCount];	if(self.timeZone != nil){
		[aCoder encodeObject:self.timeZone forKey:kUserTimeZone];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kUserUrl];
	}
	if(self.utcOffset != nil){
		[aCoder encodeObject:self.utcOffset forKey:kUserUtcOffset];
	}
	[aCoder encodeObject:@(self.verified) forKey:kUserVerified];
}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.contributorsEnabled = [[aDecoder decodeObjectForKey:kUserContributorsEnabled] boolValue];
	self.createdAt = [aDecoder decodeObjectForKey:kUserCreatedAt];
	self.defaultProfile = [[aDecoder decodeObjectForKey:kUserDefaultProfile] boolValue];
	self.defaultProfileImage = [[aDecoder decodeObjectForKey:kUserDefaultProfileImage] boolValue];
	self.descriptionField = [aDecoder decodeObjectForKey:kUserDescriptionField];
	self.favouritesCount = [[aDecoder decodeObjectForKey:kUserFavouritesCount] integerValue];
	self.followRequestSent = [[aDecoder decodeObjectForKey:kUserFollowRequestSent] boolValue];
	self.followersCount = [[aDecoder decodeObjectForKey:kUserFollowersCount] integerValue];
	self.following = [[aDecoder decodeObjectForKey:kUserFollowing] boolValue];
	self.friendsCount = [[aDecoder decodeObjectForKey:kUserFriendsCount] integerValue];
	self.geoEnabled = [[aDecoder decodeObjectForKey:kUserGeoEnabled] boolValue];
	self.idField = [[aDecoder decodeObjectForKey:kUserIdField] integerValue];
	self.idStr = [aDecoder decodeObjectForKey:kUserIdStr];
	self.isTranslationEnabled = [[aDecoder decodeObjectForKey:kUserIsTranslationEnabled] boolValue];
	self.isTranslator = [[aDecoder decodeObjectForKey:kUserIsTranslator] boolValue];
	self.lang = [aDecoder decodeObjectForKey:kUserLang];
	self.listedCount = [[aDecoder decodeObjectForKey:kUserListedCount] integerValue];
	self.location = [aDecoder decodeObjectForKey:kUserLocation];
	self.muting = [[aDecoder decodeObjectForKey:kUserMuting] boolValue];
	self.name = [aDecoder decodeObjectForKey:kUserName];
	self.notifications = [[aDecoder decodeObjectForKey:kUserNotifications] boolValue];
	self.profileBackgroundColor = [aDecoder decodeObjectForKey:kUserProfileBackgroundColor];
	self.profileBackgroundImageUrl = [aDecoder decodeObjectForKey:kUserProfileBackgroundImageUrl];
	self.profileBackgroundImageUrlHttps = [aDecoder decodeObjectForKey:kUserProfileBackgroundImageUrlHttps];
	self.profileBackgroundTile = [[aDecoder decodeObjectForKey:kUserProfileBackgroundTile] boolValue];
	self.profileImageUrl = [aDecoder decodeObjectForKey:kUserProfileImageUrl];
	self.profileImageUrlHttps = [aDecoder decodeObjectForKey:kUserProfileImageUrlHttps];
	self.profileLinkColor = [aDecoder decodeObjectForKey:kUserProfileLinkColor];
	self.profileLocation = [aDecoder decodeObjectForKey:kUserProfileLocation];
	self.profileSidebarBorderColor = [aDecoder decodeObjectForKey:kUserProfileSidebarBorderColor];
	self.profileSidebarFillColor = [aDecoder decodeObjectForKey:kUserProfileSidebarFillColor];
	self.profileTextColor = [aDecoder decodeObjectForKey:kUserProfileTextColor];
	self.profileUseBackgroundImage = [[aDecoder decodeObjectForKey:kUserProfileUseBackgroundImage] boolValue];
	self.protectedField = [[aDecoder decodeObjectForKey:kUserProtectedField] boolValue];
	self.screenName = [aDecoder decodeObjectForKey:kUserScreenName];
	self.statusesCount = [[aDecoder decodeObjectForKey:kUserStatusesCount] integerValue];
	self.timeZone = [aDecoder decodeObjectForKey:kUserTimeZone];
	self.url = [aDecoder decodeObjectForKey:kUserUrl];
	self.utcOffset = [aDecoder decodeObjectForKey:kUserUtcOffset];
	self.verified = [[aDecoder decodeObjectForKey:kUserVerified] boolValue];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	User *copy = [User new];

	copy.contributorsEnabled = self.contributorsEnabled;
	copy.createdAt = [self.createdAt copyWithZone:zone];
	copy.defaultProfile = self.defaultProfile;
	copy.defaultProfileImage = self.defaultProfileImage;
	copy.descriptionField = [self.descriptionField copyWithZone:zone];
	copy.favouritesCount = self.favouritesCount;
	copy.followRequestSent = self.followRequestSent;
	copy.followersCount = self.followersCount;
	copy.following = self.following;
	copy.friendsCount = self.friendsCount;
	copy.geoEnabled = self.geoEnabled;
	copy.idField = self.idField;
	copy.idStr = [self.idStr copyWithZone:zone];
	copy.isTranslationEnabled = self.isTranslationEnabled;
	copy.isTranslator = self.isTranslator;
	copy.lang = [self.lang copyWithZone:zone];
	copy.listedCount = self.listedCount;
	copy.location = [self.location copyWithZone:zone];
	copy.muting = self.muting;
	copy.name = [self.name copyWithZone:zone];
	copy.notifications = self.notifications;
	copy.profileBackgroundColor = [self.profileBackgroundColor copyWithZone:zone];
	copy.profileBackgroundImageUrl = [self.profileBackgroundImageUrl copyWithZone:zone];
	copy.profileBackgroundImageUrlHttps = [self.profileBackgroundImageUrlHttps copyWithZone:zone];
	copy.profileBackgroundTile = self.profileBackgroundTile;
	copy.profileImageUrl = [self.profileImageUrl copyWithZone:zone];
	copy.profileImageUrlHttps = [self.profileImageUrlHttps copyWithZone:zone];
	copy.profileLinkColor = [self.profileLinkColor copyWithZone:zone];
	copy.profileLocation = [self.profileLocation copyWithZone:zone];
	copy.profileSidebarBorderColor = [self.profileSidebarBorderColor copyWithZone:zone];
	copy.profileSidebarFillColor = [self.profileSidebarFillColor copyWithZone:zone];
	copy.profileTextColor = [self.profileTextColor copyWithZone:zone];
	copy.profileUseBackgroundImage = self.profileUseBackgroundImage;
	copy.protectedField = self.protectedField;
	copy.screenName = [self.screenName copyWithZone:zone];
	copy.statusesCount = self.statusesCount;
	copy.timeZone = [self.timeZone copyWithZone:zone];
	copy.url = [self.url copyWithZone:zone];
	copy.utcOffset = [self.utcOffset copyWithZone:zone];
	copy.verified = self.verified;

	return copy;
}
@end