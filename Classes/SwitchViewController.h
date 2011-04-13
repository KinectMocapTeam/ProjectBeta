//
//  SwitchViewController.h
//  View Switcher
//
//  Created by Dave Mark on 12/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UserProfileViewController;
@class BlueViewController;

@interface SwitchViewController : UIViewController {
    UserProfileViewController *yellowViewController;
    BlueViewController *blueViewController;
}
@property (retain, nonatomic) UserProfileViewController *yellowViewController;
@property (retain, nonatomic) BlueViewController *blueViewController;

- (IBAction)switchViews:(id)sender;
- (IBAction)loginUserProfile:(id)sender;
- (void)switchView:(id)sender;

@end