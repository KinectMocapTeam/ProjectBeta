//
//  SwitchViewController.h
//  View Switcher
//
//  Created by Dave Mark on 12/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UserProfileViewController;
@class SigninViewController;
@class UnlockViewController;

@interface SwitchViewController : UIViewController {
    UserProfileViewController *yellowViewController;
    SigninViewController *blueViewController;
    UnlockViewController *unlockViewController;
}
@property (retain, nonatomic) UserProfileViewController *yellowViewController;
@property (retain, nonatomic) SigninViewController *blueViewController;
@property (retain, nonatomic) UnlockViewController *unlockViewController;

- (IBAction)switchViews:(id)sender;
- (IBAction)loginUserProfile:(id)sender;

@end
