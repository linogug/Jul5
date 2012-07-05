//
//  Jul5AppDelegate.h
//  Jul5
//
//  Created by Lino Guglielmo on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID
@class View;
@class Puzzle;

@interface Jul5AppDelegate : UIResponder <UIApplicationDelegate> {
	SystemSoundID sid;
	View *view;
	Puzzle *puzzle;
	UIWindow *_window;
}

- (void) touchUpInside: (id) sender;
- (void) playSound; 

@property (strong, nonatomic) UIWindow *window;

@end
