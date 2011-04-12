//
//  BlueViewController.h
//  View Switcher
//
//  Created by Dave Mark on 12/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SwitchViewController;
@class YellowViewController;


@interface BlueViewController : UIViewController {

    //number values for warning messages
    int CONNECTION_ERROR;
    int USERNAME_ERROR;
    int PASSWORD_ERROR;
    int NOINPUT_ERROR;
    int CONNECTION_SUCCESS;
    
    //Array of warnings and messages for signinFeedback
    NSMutableArray *login_warnings;
    
    //Feedback label for user signin
    IBOutlet UILabel *login_feedback;
    
    //text fields for given user login name and password
    IBOutlet UITextField *login_username;
    IBOutlet UITextField *login_password;
   
YellowViewController *yellowViewController;
@private
    SwitchViewController *switchViewController;
    
}

@property (retain) SwitchViewController *switchViewController;
@property (retain) YellowViewController *yellowViewController;

- (IBAction)blueButtonPressed;
-(IBAction) showWarning:(id)sender; 
@end
