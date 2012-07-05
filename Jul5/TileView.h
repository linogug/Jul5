//
//  TileView.h
//  Jul5
//
//  Created by Lino Guglielmo on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface TileView: UIImageView {
	View *view;
	NSUInteger row;	//current position of this tile
	NSUInteger col;
}

- (id) initWithView: (View *) v row: (NSUInteger) r col: (NSUInteger) c;
@end