//
//  Asgn3AppDelegate.h
//  Asgn3
//
//  Created by Paige Ponzeka on 3/4/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Deck.h"
#import "Cards.h"

@interface Asgn3AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UITabBarController *tabBarController;
	Deck* cardDeck;	//the deck for this round
	Cards* setCard; 
	NSString* selectedCard; //the view pickers card
	NSString* selectedSuit; //the view picker's suit
	NSString* currentCard; // the current secret card's type
	NSString* currentSuit; //the current "Secret card's suit
	int score; //current position in the deck
	int totalGuesses; // tallys the total number of guesses
}


@property(nonatomic, retain)  Deck* cardDeck;	

@property (nonatomic, retain) IBOutlet UIWindow *window;
/*Set the Currently Selected Card by the User*/
-(void) setSelectedValues: (NSString*) card: (NSString*) suit;
/*Set the Real card*/
-(void) setCurrentValues: (NSString*) card: (NSString*)suit;
-(Cards*) getTopCard;
-(void) setTopCard:(Cards*) card;
/*Compare the two cards return 1 if they are equal (the answer is right) 
 or return 0 if they are different*/
-(int) compareCards;
//gets and new card from the deck and sets it to the currentcard
-(void) getAndSetNextCard;
//returns the current card object
-(Cards*) getcurrentCard;
//used by the UnlockitView to set the current selected suit and card
-(void) setSelectedCard:(NSString*) suit: (NSString *) card;
-(void) increaseScore;
-(int) getScore;
-(NSString*) getCurrentCardName;
-(NSString*) getCurrentCardSuit;
-(void) increaseGuess;
-(int) getGuess;
-(void) resetGuess;
@end

