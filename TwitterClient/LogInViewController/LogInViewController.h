//
//  LogInViewController.h
//  TwitterClient
//
//  Created by Nada Gamal on 6/29/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogInViewController : UIViewController
- (IBAction)loginBtnPressed:(id)sender;
@property (weak, nonatomic) IBOutlet TWTRLogInButton *loginBtn;
@end
