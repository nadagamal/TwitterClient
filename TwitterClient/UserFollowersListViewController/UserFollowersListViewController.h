//
//  UserFollowersListViewController.h
//  TwitterClient
//
//  Created by Nada Gamal on 6/30/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FollowersList.h"
#import "User.h"
@interface UserFollowersListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSMutableArray * followersList;
@property(nonatomic,retain) UIRefreshControl *refreshControl;

@end
