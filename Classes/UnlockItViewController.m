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
	NSArray *viewControllers=[NSArray arrayWithObjects:  vc3, vc2,nil];

    //Attach them to the tab bar controller
	[tabBarController setViewControllers: viewControllers];
	//put the tabBarController's view on the Window
	[self.view addSubview:[tabBarController view]];

    
    //[vc1 release];
	[vc2 release];
	[vc3 release];

	return self;

}
//set the number of componenect in the pickerviewer
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView { 	
	return 2; // We need two columns to return two
}
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component { // This method also needs to be used. This asks how many rows the UIPickerView will have.
	if(component==0)
		return [pickerArray count]; 
	else
		return 4;
	// We will need the amount of rows that we used in the pickerViewArray, so we will return the count of the array.
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
	
	UIImage *hearts = [UIImage imageNamed:@"heart.png"];
	UIImage *clubs = [UIImage imageNamed:@"club.png"];
	UIImage *diamonds = [UIImage imageNamed:@"diamond.png"];
	UIImage *spades = [UIImage imageNamed:@"spade.png"];
	
	UIImageView *heartView = [[UIImageView alloc] initWithImage:hearts];
	UIImageView *clubView = [[UIImageView alloc] initWithImage:clubs];
	UIImageView *diamondView = [[UIImageView alloc] initWithImage:diamonds];
	UIImageView *spadeView = [[UIImageView alloc] initWithImage:spades];
	
	imageViewArray = [[NSArray alloc] initWithObjects: spadeView, heartView, clubView, diamondView, nil];
	
	 pickerArray = [[NSMutableArray alloc] init];
	[pickerArray addObject:@"2"];
	[pickerArray addObject:@"3"];
	[pickerArray addObject:@"4"];
	[pickerArray addObject:@"5"];
	[pickerArray addObject:@"6"];
	[pickerArray addObject:@"7"];
	[pickerArray addObject:@"8"];
	[pickerArray addObject:@"9"];
	[pickerArray addObject:@"10"];
	[pickerArray addObject:@"J"];
	[pickerArray addObject:@"Q"];
	[pickerArray addObject:@"K"];
	[pickerArray addObject:@"A"];
	
	suitArray= [[NSMutableArray alloc] init];
	[suitArray addObject:@"Spade"];
	[suitArray addObject:@"Heart"];
	[suitArray addObject:@"Club"];
	[suitArray addObject:@"Diamond"];
	//set the background color of the view so we can see it
	
	
	
	//check and x image location
	CGRect myImageRect = CGRectMake(100, 275, 100, 100);
	
	//reptar image 
	UIImageView *reptar = [[UIImageView alloc] initWithFrame:myImageRect];
	[reptar setImage:[UIImage imageNamed:@"Reptar.png"]];
	[reptar setBackgroundColor:[UIColor blackColor]];
	
	[self.view addSubview:reptar];


	[[self view] setBackgroundColor: [UIColor blackColor]];
	[reptar release];
}
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component { // And now the final part of the UIPickerView, what happens when a row is selected.
	
	/*
	if(component ==0)
	{
		card = (NSString *)[pickerArray objectAtIndex:row];
	}
	if(component==1)
	{
		suit = (NSString *)[suitArray objectAtIndex:row];
		
	}
	Asgn3AppDelegate* app = (Asgn3AppDelegate*)[UIApplication sharedApplication].delegate;
//setSelected: (NSString*) suit: [(NSString*) card];
	[app setSelectedValues:card: suit];*/


}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row
		  forComponent:(NSInteger)component reusingView:(UIView *)view
{ // This method asks for what the title or label of each row will be.
	NSLog(@"Setting Components");
	if(component==0)
	{
		UILabel *picker_label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];;
		[picker_label setText:[pickerArray objectAtIndex:row]];
		[picker_label setBackgroundColor:[UIColor clearColor]];
		return picker_label;
		; // We will set a new row for every string used in the array.
	}
	else
		return [imageViewArray objectAtIndex:row];
	
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
