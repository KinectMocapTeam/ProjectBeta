    //
//  SwitchViewController.m
//  View Switcher
//
//  Created by Dave Mark on 12/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SwitchViewController.h"
#import "UserProfileViewController.h"
#import "SigninViewController.h"
#import "UnlockItViewController.h"


@implementation SwitchViewController
@synthesize yellowViewController;
@synthesize blueViewController;
@synthesize unlockViewController;

- (void)viewDidLoad
{
    SigninViewController *blueController = [[SigninViewController alloc]
										  initWithNibName:@"SigninView" bundle:nil];
    self.blueViewController.switchViewController = self;

    self.blueViewController = blueController;
    
    [self.view insertSubview:blueController.view atIndex:0];
    [blueController release];
    [super viewDidLoad];
}

/*Currently Disabled*/
- (IBAction)switchViews:(id)sender
{
   /* [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
	
    //if (self.yellowViewController.view.superview == nil)
    {
        if (self.yellowViewController == nil)
        {
            YellowViewController *yellowController =
            [[YellowViewController alloc] initWithNibName:@"YellowView"
                                                   bundle:nil];
            self.yellowViewController = yellowController;
            [yellowController release];
        }
        [UIView setAnimationTransition:
         UIViewAnimationTransitionFlipFromRight
                               forView:self.view cache:YES];
		
        [blueViewController viewWillAppear:YES];
        [yellowViewController viewWillDisappear:YES];
		
        [blueViewController.view removeFromSuperview];
        [self.view insertSubview:yellowViewController.view atIndex:0];
        [yellowViewController viewDidDisappear:YES];
        [blueViewController viewDidAppear:YES];
   // }*/
   /* else
    {
		if (self.blueViewController == nil)
		{
			BlueViewController *blueController =
			[[BlueViewController alloc] initWithNibName:@"BlueView"
												 bundle:nil];
			self.blueViewController = blueController;
			[blueController release];
		}
        [UIView setAnimationTransition:
         UIViewAnimationTransitionFlipFromLeft
							   forView:self.view cache:YES];
		
        [yellowViewController viewWillAppear:YES];
        [blueViewController viewWillDisappear:YES];
		
        [yellowViewController.view removeFromSuperview];
        [self.view insertSubview:blueViewController.view atIndex:0];
        [blueViewController viewDidDisappear:YES];
        [yellowViewController viewDidAppear:YES];
    }*/
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
	if (self.blueViewController.view.superview == nil)
        self.blueViewController = nil;
    else
		self.yellowViewController = nil;	
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (IBAction)loginUserProfile:(id)sender
{

}
- (void)dealloc {
	[yellowViewController release];
    [blueViewController release];

    [super dealloc];
}


@end
