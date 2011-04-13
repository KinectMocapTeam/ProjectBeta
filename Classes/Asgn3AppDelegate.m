//
//  Asgn3AppDelegate.m
//  Asgn3
//
//  Created by Paige Ponzeka on 3/4/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import "Asgn3AppDelegate.h"
#import "UnlockItViewController.h"
#import "GetHintViewController.h"
#import "CheckItViewController.h"
#import "Deck.h"
#import "Cards.h"


@implementation Asgn3AppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    //intialize deck position to Zero 
	score = 0;
	totalGuesses = 0;
	//Create the tabBarController
	tabBarController=[[UITabBarController alloc] init];

	//Create two view Controllers
	UIViewController *vc1 =[[UnlockItViewController alloc] init];
	UIViewController *vc3 =[[CheckItViewController alloc] init];
	UIViewController *vc2 =[[GetHintViewController alloc] init];
	
	//intialize the Deck
	cardDeck=[[Deck alloc] init];
	[cardDeck createNewDeck];
	
	//Pick a Starting Card
	[self getAndSetNextCard];	
	//Make an array containing the two view controllers
	NSArray *viewControllers=[NSArray arrayWithObjects: vc1, vc3, vc2,nil];
	
	
	//intialize selected card
	[self setSelectedValues:@"Spade": @"2"];
	
	[vc1 release];
	[vc2 release];
	[vc3 release];
	
	
	//Attach them to the tab bar controller
	[tabBarController setViewControllers: viewControllers];
	//put the tabBarController's view on the Window
	[window addSubview:[tabBarController view]];
    // Override point for customization after application launch.
    
	
		
    [self.window makeKeyAndVisible];
    
    return YES;
}

@synthesize cardDeck;	
- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}
/*Set the Currently Selected Card by the User*/
-(void) setSelectedValues: (NSString*) card: (NSString*) suit{
	
	selectedCard = card;
	selectedSuit = suit;
	NSLog(@"Set Selected Card %@, %@", selectedCard, selectedSuit);
}
/*Set the Real card*/
-(void) setCurrentValues: (NSString*) card: (NSString*)suit{
	currentCard = card;
	currentSuit = suit;
}

/*Compare the two cards return 1 if they are equal (the answer is right) 
 or return 0 if they are different*/
-(int) compareCards{
	/*Compare Suits*/
	NSLog(@"COMPARING SUITS: SELECTED: %@, CURRENT: %@", selectedSuit, currentSuit);
	if ([selectedSuit isEqualToString: currentSuit])
	{
		/*Compare Cards*/
		NSLog(@"COMPARING Cards: SELECTED: %@, CURRENT: %@", selectedCard, currentCard);
		if ([selectedCard isEqualToString: currentCard])
		{
			
			return 1; //the cards are the same
		}
		else {
			return 0; //the cards are different
		}

	}
	else {
		return 0; //the cards are the same
	}

}
//gets and new card from the deck and sets it to the currentcard
-(void) getAndSetNextCard
{
	//get the next card from the deck
	Cards *newCard = [cardDeck getNextCard];
	//set it as the currentcard
	currentCard=[newCard getCard];
	currentSuit=[newCard getSuitString];
	NSLog(@"Setting Current Card to %@, %@ \n", currentCard, currentSuit);

}
//returns the current card object
-(Cards*) getcurrentCard
{
	return setCard;
}
//used by the UnlockitView to set the current selected suit and card
-(void) setSelectedCard:(NSString*) suit: (NSString *) card
{
	selectedCard = card;
	selectedSuit = suit;
}
-(void) resetGuess
{
	totalGuesses =0;
}
/*-(void) setTopCard:(Cards*) card{
	topCard = card;
}
-(Cards*) getTopCard{
	return topCard;
}*/
-(void) increaseScore{
	score++;
}
-(int) getScore{
	return score;
}
-(NSString*) getCurrentCardName
{
	return currentCard;
}
-(NSString*) getCurrentCardSuit
{
	return currentSuit;
}
-(void) increaseGuess
{
	totalGuesses++;
}
-(int) getGuess
{
	return totalGuesses;
}
- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
