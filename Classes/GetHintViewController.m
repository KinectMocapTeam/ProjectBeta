    //
//  GetHintViewController.m
//  Asgn3
//
//  Created by Paige Ponzeka on 3/4/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import "GetHintViewController.h"

@implementation GetHintViewController


-(id)init
{
	//call the superclass's designated initializer
	[super initWithNibName:nil 
					bundle:nil];
	
	//Get the tab bar item
	UITabBarItem *tbi = [self tabBarItem];
	
	//Give it a label
	[tbi setTitle:@"Get Hint"];
	//set bar iamge
	UIImage *i=[UIImage imageNamed:@"Clipboard.png"];
	[tbi setImage:i];
	
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
	
	//set the background color of the view so we can see it
	[[self view] setBackgroundColor: [UIColor blackColor]];
	
	//create a UILabel
	// The X and Y co-ordinates of the iPhone interface elements originate at the top left of the element.
	CGRect labelRectangle = CGRectMake(10, 30, 100, 30);
	
	// Allocate and Initialize the UILabel with the frame defined above
	UILabel *Label = [[UILabel alloc] initWithFrame:labelRectangle];
	
	// Set the text you would like to display
	[Label setText:@"Card is..."];
	
	// Add your label to the view or subview you wish
	// self.view will add the label to this viewController's View
	[self.view addSubview:Label];

	[Label setBackgroundColor:[UIColor clearColor]];
	[Label setTextColor:[UIColor whiteColor]];
	[Label release];
	
	}
- (void) viewWillAppear:(BOOL)animated
{
	/*CGRect suitRectangle = CGRectMake(150, 100, 150, 30);
	Asgn3AppDelegate* app = (Asgn3AppDelegate*)[UIApplication sharedApplication].delegate;
	// Allocate and Initialize the UILabel with the frame defined above
	UILabel *suit = [[UILabel alloc] initWithFrame:suitRectangle];
	
	// Set the text you would like to display
	NSString *cSuit = [app getCurrentCardSuit];
	[suit setText:cSuit];
	
	// Add your label to the view or subview you wish
	// self.view will add the label to this viewController's View
	[self.view addSubview:suit];
	
	[suit setBackgroundColor:[UIColor blackColor]];
	[suit setTextColor:[UIColor redColor]];
	
	//Create A Card UILabel
	// The X and Y co-ordinates of the iPhone interface elements originate at the top left of the element.
	CGRect cardRectangle = CGRectMake(100, 100, 30, 30);
	
	// Allocate and Initialize the UILabel with the frame defined above
	UILabel *card = [[UILabel alloc] initWithFrame:cardRectangle];
	
	NSString *cCard = [app getCurrentCardName];
	NSLog(@"Current Card: %@ \n", cCard);
	// Set the text you would like to display
	[card setText:cCard];	
	
	// Add your label to the view or subview you wish
	// self.view will add the label to this viewController's View
	[self.view addSubview:card];
	
	[card setBackgroundColor:[UIColor blackColor]];
	[card setTextColor:[UIColor redColor]];
	
	[card release];
	
	[suit release];*/
	
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
