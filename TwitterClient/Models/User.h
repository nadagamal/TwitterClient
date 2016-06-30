//
//	User.h
//
//	Create by Nada Gamal on 30/6/2016
//	Copyright © 2016. All rights reserved.
//

//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

#import <UIKit/UIKit.h>

@interface User : NSObject

@property (nonatomic, assign) BOOL contributorsEnabled;
@property (nonatomic, strong) NSString * createdAt;
@property (nonatomic, assign) BOOL defaultProfile;
@property (nonatomic, assign) BOOL defaultProfileImage;
@property (nonatomic, strong) NSString * descriptionField;
@property (nonatomic, assign) NSInteger favouritesCount;
@property (nonatomic, assign) BOOL followRequestSent;
@property (nonatomic, assign) NSInteger followersCount;
@property (nonatomic, assign) BOOL following;
@property (nonatomic, assign) NSInteger friendsCount;
@property (nonatomic, assign) BOOL geoEnabled;
@property (nonatomic, assign) NSInteger idField;
@property (nonatomic, strong) NSString * idStr;
@property (nonatomic, assign) BOOL isTranslationEnabled;
@property (nonatomic, assign) BOOL isTranslator;
@property (nonatomic, strong) NSString * lang;
@property (nonatomic, assign) NSInteger listedCount;
@property (nonatomic, strong) NSString * location;
@property (nonatomic, assign) BOOL muting;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, assign) BOOL notifications;
@property (nonatomic, strong) NSString * profileBackgroundColor;
@property (nonatomic, strong) NSString * profileBackgroundImageUrl;
@property (nonatomic, strong) NSString * profileBackgroundImageUrlHttps;
@property (nonatomic, assign) BOOL profileBackgroundTile;
@property (nonatomic, strong) NSString * profileImageUrl;
@property (nonatomic, strong) NSString * profileImageUrlHttps;
@property (nonatomic, strong) NSString * profileLinkColor;
@property (nonatomic, strong) NSObject * profileLocation;
@property (nonatomic, strong) NSString * profileSidebarBorderColor;
@property (nonatomic, strong) NSString * profileSidebarFillColor;
@property (nonatomic, strong) NSString * profileTextColor;
@property (nonatomic, assign) BOOL profileUseBackgroundImage;
@property (nonatomic, assign) BOOL protectedField;
@property (nonatomic, strong) NSString * screenName;
@property (nonatomic, assign) NSInteger statusesCount;
@property (nonatomic, strong) NSObject * timeZone;
@property (nonatomic, strong) NSObject * url;
@property (nonatomic, strong) NSObject * utcOffset;
@property (nonatomic, assign) BOOL verified;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)toDictionary;
@end