//
//  Puzzle.m
//  Jul5
//
//  Created by Lino Guglielmo on 7/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Puzzle.h"

@implementation Puzzle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		
		// Initialization code
		self.backgroundColor = [UIColor whiteColor];
		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		
		//Center the button in the view.
		CGRect b = self.bounds;
		CGSize s = CGSizeMake(200, 40);	//size of button
		
		button.frame = CGRectMake(
								  b.origin.x + (b.size.width - s.width) / 2,
								  b.size.height - s.height ,
								  s.width,
								  s.height
								  );
		
		[button setTitleColor: [UIColor redColor] forState: UIControlStateNormal];
		[button setTitle: @"Reset" forState: UIControlStateNormal];
		
		[button addTarget: [UIApplication sharedApplication].delegate
				   action: @selector(touchUpInside:)
		 forControlEvents: UIControlEventTouchUpInside
		 ];
		
		[self addSubview: button];		
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
