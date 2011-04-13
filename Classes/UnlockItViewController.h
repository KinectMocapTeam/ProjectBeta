//
//  UnlockItViewController.h
//  Asgn3
//
//  Created by Paige Ponzeka on 3/4/11.
//  Copyright 2011 NYU. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UnlockItViewController : UIViewController {
	NSMutableArray *pickerArray;
	NSMutableArray *suitArray;
	NSString *card;
	NSString *suit;
	NSArray *imageViewArray;
    UITabBarController *tabBarController;
}
@end
