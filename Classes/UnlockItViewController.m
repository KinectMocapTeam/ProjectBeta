//
//  UnlockItViewController.m
//  Asgn3
//
//  Created by Paige Ponzeka on 3/4/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import "UnlockItViewController.h"
#import "GetHintViewController.h"
#import "CheckItViewController.h"
@implementation UnlockItViewController

-(id)init
{
	//call the superclass's designated initializer
	[super initWithNibName:nil 
					bundle:nil];
	//Get the tab bar item
	UITabBarItem *tbi = [self tabBarItem];
	
	//Give it a label
	[tbi setTitle:@"Unlock It"];
	//set bar iamge
	UIImage *i=[UIImage imageNamed:@"Link.png"];
	[tbi setImage:i];
	
    
    //Create the tabBarController
	tabBarController=[[UITabBarController alloc] init];
    
	//Create two view Controllers
	//UIViewController *vc1 =[[UnlockItViewController alloc] init];
	UIViewController *vc3 =[[CheckItViewController alloc] init];
	UIViewController *vc2 =[[GetHintViewController alloc] init];
    
    //Make an array containing the two view controllers
	NSArray *viewControllers=[NSArray arrayWithObjects: vc3, vc2,nil];

    //Attach them to the tab bar controller
	[tabBarController setViewControllers: viewControllers];
	//put the tabBarController's view on the Window
	[self.view addSubview:[tabBarController view]];

    
    //[vc1 release];
	[vc2 release];
	[vc3 release];

	return self;

}
-(id)initWithNibName:(NSString *)nibName bundle: (NSBundle *) bundle
{
	//Disregard parameters- nib name is an implementation detail
	return [self init];
}
//This Method gets called automatically when the view is created
-(void)viewDidLoad
{
	[super viewDidLoad];
	
	
	[[self view] setBackgroundColor: [UIColor blackColor]];
	
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
