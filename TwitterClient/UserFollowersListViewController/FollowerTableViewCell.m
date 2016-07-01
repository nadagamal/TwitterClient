//
//  FollowerTableViewCell.m
//  TwitterClient
//
//  Created by Nada Gamal on 6/30/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import "FollowerTableViewCell.h"

@implementation FollowerTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.profileImg.layer.cornerRadius=self.profileImg.frame.size.height/2;
    self.profileImg.clipsToBounds=YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
