    //
//  YellowViewController.m
//  View Switcher
//
//  Created by Dave Mark on 12/5/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "UserProfileViewController.h"


@implementation UserProfileViewController

-(void) viewDidLoad{
    [super viewDidLoad];
    //intialize tab bar
    tabBar = [[UITabBar alloc] init];
    //put the tabBarController's view on the window
    
}
- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
