    //
//  CheckItViewController.m
//  Asgn3
//
//  Created by Paige Ponzeka on 3/4/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import "CheckItViewController.h"
#import <AudioToolbox/AudioServices.h>

#define AppDelegate (Asgn3AppDelegate *)[[UIApplication sharedApplication] delegate];
@implementation CheckItViewController
-(id)init
{
	//call the superclass's designated initializer
	[super initWithNibName:nil 
					bundle:nil]; 
	//Get the tab bar item
	UITabBarItem *tbi = [self tabBarItem];
	
	//Give it a label
	[tbi setTitle:@"Check It"];
	
	//set bar iamge
	UIImage *i=[UIImage imageNamed:@"Unlocked.png"];
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
	

	}


- (void) viewWillAppear:(BOOL)animated
{
	
	NSString *path = [ [NSBundle mainBundle] pathForResource:@"woo" ofType:@"wav"];
    SystemSoundID theSound;
	AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:path], &theSound);
		
		
	[[self view] setBackgroundColor: [UIColor blackColor]];
	//The location for the label

	// Allocate and Initialize the UILabel with the frame defined above
		//run the comparison between the currentCard and the selectedCard
	/*Asgn3AppDelegate* app = (Asgn3AppDelegate*)[UIApplication sharedApplication].delegate;
	
	int compare = [app compareCards];
		
	//check and x image location
	CGRect myImageRect = CGRectMake(100, 150, 100, 100);
	
	//checkmark image 
	UIImageView *check = [[UIImageView alloc] initWithFrame:myImageRect];
	[check setImage:[UIImage imageNamed:@"ok.png"]];
	[check setBackgroundColor:[UIColor blackColor]];

	//x image
	UIImageView *cancel = [[UIImageView alloc] initWithFrame:myImageRect];
	[cancel setImage:[UIImage imageNamed:@"cancel.png"]];
	[cancel setBackgroundColor:[UIColor blackColor]];
		//NSLog(@"Comparing Cards: %d", compare);
	[app increaseGuess];
	//NSLog(@"Total guesses %d", [app getGuess]);
	//print out the total number of guesses
	CGRect guessRectangle = CGRectMake(50, 300, 200, 150);
	UILabel *guess = [[UILabel alloc] initWithFrame:guessRectangle];
	NSString* guesses =[NSString stringWithFormat: @"Total Guesses: %d", [app getGuess]];
	[guess setText:guesses];
	[guess setBackgroundColor:[UIColor blackColor]];
	[guess setTextColor:[UIColor whiteColor]];
	[self.view addSubview:guess];
	[guess release];
	
	if(compare == 1){ //the two cards are the same
		//NSLog(@"Cards ARE THE SAME\n");
						//get and set a new card
		[app increaseScore];
		[app getAndSetNextCard];
		//reset the total number of guesses
		[app resetGuess];
		//Play Celebartory music
		AudioServicesPlaySystemSound (theSound); 

		
		//exit the program
		//exit(0);
		
		[self.view addSubview:check];
	}
	else { //the two cards are different
		//NSLog(@"CARDS ARE DIFFERENT \n");
		//add the x image
		[self.view addSubview:cancel];
	}

	[check release];
	[cancel release];
     */
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
