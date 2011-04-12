    //
//  BlueViewController.m
//  View Switcher
//
//  Created by Dave Mark on 12/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "BlueViewController.h"

@implementation BlueViewController
@synthesize switchViewController;
@synthesize yellowViewController;
- (IBAction)blueButtonPressed
{
    UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:@"Blue View Button Pressed"
						  message:@"You pressed the button on the blue view"
						  delegate:nil
						  cancelButtonTitle:@"Yep, I did."
						  otherButtonTitles:nil];
    [alert show];
    [alert release];
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

-(IBAction) showWarning:(id)sender
{
    NSLog(@"Button Pressed");
    NSString *given_username= [login_username text];
    NSString *given_password= [login_password text];
    NSLog(@"Username: %@, Password: %@", given_username, given_password);
    //run the SQL code to get the user info
    
    
    int query_result = CONNECTION_SUCCESS;
    
    
    //display a message to the user based on the connection results 
    //(currently just defaults to connection error)
    [login_feedback setText:[login_warnings objectAtIndex: query_result]];
    
    //if the connection is successful 
    if(query_result == CONNECTION_SUCCESS)
    {
        //switch to the user profile screen
        NSLog(@"Switching to USer profile Screen");
        YellowViewController *yellowViewController = [[YellowViewController alloc] 
                                                                initWithNibName:@"YellowView" 
                                                                bundle:nil];
        
        [self presentModalViewController:yellowViewController animated:YES];
      //  [self.navigationController pushViewController:yellowViewController animated:YES];
        [yellowViewController release];
    }
}
-(void) viewDidLoad
{
    NSLog(@"Loading Login Screen");
    switchViewController =
    [[SwitchViewController alloc] initWithNibName:@"BlueView"
                                         bundle:nil];
    self.switchViewController = switchViewController;
    //initialize warning messages 
    CONNECTION_ERROR = 0;
    USERNAME_ERROR = 1;
    PASSWORD_ERROR = 2;
    NOINPUT_ERROR = 3;
    CONNECTION_SUCCESS = 4;
    
    //creating warning messages array
    login_warnings =  [[NSMutableArray alloc] init];
    [login_warnings addObject:@"Connection Failed"];
    [login_warnings addObject:@"User Does Not Exist"];
    [login_warnings addObject:@"Password Invalid"];
    [login_warnings addObject:@"Please Input a Username and Password"];
    [login_warnings addObject:@"Connection Successful!"];    
    
}
- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
    [switchViewController release];
    [login_warnings release];
    [login_feedback release];
    [login_username release];
    [login_password release];
    [super dealloc];
}


@end
