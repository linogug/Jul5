//
//  TileView.m
//  Jul5
//
//  Created by Lino Guglielmo on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TileView.h"
#import "View.h"

@implementation TileView

- (id) initWithView: (View *) v row: (NSUInteger) r col: (NSUInteger) c {
	NSString *filename = [NSString stringWithFormat: @"%u%u.png", r, c];
	UIImage *image = [UIImage imageNamed: filename];
	if (image == nil) {
		NSLog(@"could not find file %u%u.png", r, c);
		return nil;
	}
	
	self = [super initWithImage: image];
	if (self) {
		// Initialization code
		self.userInteractionEnabled = YES;	//UIImageView defaults to NO.
		view = v;
		row = r;
		col = c;
		[view place: self atRow: row col: col];
		self.backgroundColor = [UIColor blackColor];
		self.alpha = .02;
	}
	return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event {
	
	//Can this tile move into the empty position?
	//Or is this tile landlocked?
	[view place: self atRow: row col: col];	
	NSLog(@"touch");
	
	
}	

@end
