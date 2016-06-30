//
//  LogInViewController.m
//  TwitterClient
//
//  Created by Nada Gamal on 6/29/16.
//  Copyright © 2016 Eventtus. All rights reserved.
//

#import "LogInViewController.h"
#import "UserFollowersListViewController.h"
@interface LogInViewController ()

@end

@implementation LogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginBtnPressed:(id)sender {
    [self.loginBtn setLogInCompletion:^(TWTRSession *session, NSError *error) {
        if(error != nil) {
            //error state
            
        } else {
            UIView * view=_loginBtn.subviews.lastObject;
            UILabel * logInLabel=view.subviews.firstObject;
            [logInLabel setText:[NSString stringWithFormat:@"Welcome %@",session.userName]];
            // save crednetials at user defaults
            [[NSUserDefaults standardUserDefaults]setObject:session.userName forKey:USER_NAME];
            [[NSUserDefaults standardUserDefaults]setObject:session.userID forKey:USER_ID];
            [[NSUserDefaults standardUserDefaults]setObject:session.authToken forKey:AUTH_TOKEN];
            [[NSUserDefaults standardUserDefaults]setObject:session.authTokenSecret forKey:AUTH_TOKEN_SECRET];
            [[NSUserDefaults standardUserDefaults]synchronize];
            [self.navigationController pushViewController:[[UserFollowersListViewController alloc]init] animated:YES];

            
        }
    }];
    
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
