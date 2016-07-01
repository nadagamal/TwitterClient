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
	if(dictionary[kUserContributorsEnabled] !=[NSNull null]){
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
@end