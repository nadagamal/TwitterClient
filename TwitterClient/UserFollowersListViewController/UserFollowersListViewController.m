//
//  UserFollowersListViewController.m
//  TwitterClient
//
//  Created by Nada Gamal on 6/30/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import "UserFollowersListViewController.h"
#import "FollowerTableViewCell.h"
#import "User.h"
@interface UserFollowersListViewController ()
{
    NSString * cursor;
}
@end

@implementation UserFollowersListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.followersList=[[NSMutableArray alloc]init];
    self.title=@"User Followers";
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 173;
    //initialize the cursor with -1 which means the first page and the replace it's value with next_cursor value
    cursor=@"-1";
    // Get User Follower List
    [self getUserFollowersList];
    self.refreshControl=[[UIRefreshControl alloc]init];
    [_refreshControl addTarget:nil action:@selector(getUserFollowersList) forControlEvents:UIControlEventValueChanged];
    [self.tableView addSubview:_refreshControl];
 
}
-(void)getUserFollowersList
{
    if (self.refreshControl.isRefreshing) {
         cursor=@"-1";
    }
    NSString * username=[[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
    ACAccountStore *accountStore = [[ACAccountStore alloc] init];
    ACAccountType *accountType = [accountStore accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
    [accountStore requestAccessToAccountsWithType:accountType options:nil completion:^(BOOL granted, NSError *error){
        if (granted) {
            NSArray *accounts = [accountStore accountsWithAccountType:accountType];
            if (accounts.count > 0)
            {
                ACAccount *twitterAccount = [accounts objectAtIndex:0];
                
                for(ACAccount *t in accounts)
                {
                    if([t.username isEqualToString:username])
                    {
                        twitterAccount = t;
                        break;
                    }
                }
                 NSDictionary * parameters=[[NSDictionary alloc]initWithObjects:@[username, cursor,@"10"] forKeys:@[@"screen_name",@"cursor",@"count"]];

                SLRequest *twitterInfoRequest = [SLRequest requestForServiceType:SLServiceTypeTwitter requestMethod:SLRequestMethodGET URL:[NSURL URLWithString:kGetFollowersList] parameters:parameters];
                [twitterInfoRequest setAccount:twitterAccount];
                [twitterInfoRequest performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error) {
                    dispatch_async(dispatch_get_main_queue(), ^{
                        if (self.refreshControl.isRefreshing) {
                            [self.refreshControl endRefreshing];
                            [self.followersList removeAllObjects];
                        }
                        
                        if ([urlResponse statusCode] == 429) {
                            NSLog(@"Rate limit reached");
                            return;
                        }
                        if (error) {
                            NSLog(@"Error: %@", error.localizedDescription);
                            return;
                        }
                        if (responseData) {
                            NSError *error = nil;
                            NSDictionary * responseDic = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableLeaves error:&error];
                            FollowersList * followers=[[FollowersList alloc]initWithDictionary:responseDic];
                            cursor=followers.nextCursorStr;
                            [self.followersList addObjectsFromArray:followers.users];
                            [self.tableView reloadData];
                            
                        }
                    });
                }];
            }
        } else {
            NSLog(@"No access granted");
        }
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableView DataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.followersList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row==self.followersList.count-1)
        [self getUserFollowersList];
    static NSString *CellIdentifier = @"FollowerTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    if (cell == nil)
    {
        cell=  [[[NSBundle mainBundle]loadNibNamed:CellIdentifier owner:self options:nil]objectAtIndex:0];
    }
    
    User * user=[self.followersList objectAtIndex:indexPath.row];
    [((FollowerTableViewCell*)cell).fullNameLbl setText:user.name];
    [((FollowerTableViewCell*)cell).userNameLbl setText:user.screenName];
    [((FollowerTableViewCell*)cell).bioTxtView setText:user.descriptionField];
    [((FollowerTableViewCell*)cell).profileImg sd_setImageWithURL:[NSURL URLWithString:user.profileImageUrlHttps] placeholderImage:[UIImage imageNamed:@"ProfileImgPlaceHolder"]];
    return cell; 
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
