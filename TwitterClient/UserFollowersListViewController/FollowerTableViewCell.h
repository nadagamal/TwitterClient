//
//  FollowerTableViewCell.h
//  TwitterClient
//
//  Created by Nada Gamal on 6/30/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FollowerTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *fullNameLbl;
@property (strong, nonatomic) IBOutlet UILabel *userNameLbl;
@property (strong, nonatomic) IBOutlet UIImageView *profileImg;
@property (strong, nonatomic) IBOutlet UITextView *bioTxtView;

@end
