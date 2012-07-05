//
//  Jul5AppDelegate.m
//  Jul5
//
//  Created by Lino Guglielmo on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Jul5AppDelegate.h"
#import "View.h"
#import "Puzzle.h"

@implementation Jul5AppDelegate
@synthesize window = _window;

- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{
	// Override point for customization after application launch.
	NSBundle *bundle = [NSBundle mainBundle];
	NSLog(@"bundle.bundlePath == \"%@\"", bundle.bundlePath);	
	
	NSString *filename = [bundle pathForResource: @"gun" ofType: @"mp3"];
	NSLog(@"filename == \"%@\"", filename);
	
	NSURL *url = [NSURL fileURLWithPath: filename isDirectory: NO];
	NSLog(@"url == \"%@\"", url);
	
	OSStatus error = AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &sid);
	if (error != kAudioServicesNoError) {
		NSLog(@"AudioServicesCreateSystemSoundID error == %ld", error);
	}
	
	UIScreen *screen = [UIScreen mainScreen];
	//view = [[View alloc] initWithFrame:(];
	self.window = [[UIWindow alloc] initWithFrame: screen.bounds];
	self.window.backgroundColor = [UIColor whiteColor];
	
	view = [[View alloc] initWithFrame: screen.applicationFrame];
	//self.window = [[UIWindow alloc] initWithFrame: screen.bounds];	
	
	
	[self.window makeKeyAndVisible];
	[self.window addSubview: view];
//	[self.window addSubview: puzzle];	
	return YES;
}

- (void) touchUpInside: (id) sender {
	//The sender is the button that was pressed.
	
	NSLog(@"The \"%@\" button was pressed.",
		  [sender titleForState: UIControlStateNormal]);
	
	//AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
	AudioServicesPlaySystemSound(sid);
}

- (void) playSound {
AudioServicesPlaySystemSound(sid);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
