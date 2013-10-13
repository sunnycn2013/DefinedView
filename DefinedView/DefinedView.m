//
//  DefinedView.m
//  DefinedView
//
//  Created by administrator on 13-9-3.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "DefinedView.h"

@implementation DefinedView
@synthesize button;
@synthesize delegate;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle]loadNibNamed:@"DefinedView" owner:self options:nil];
        [self addSubview:view];
        
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

- (void)dealloc {
    [button release];
    [super dealloc];
}
- (IBAction)showDetailView:(id)sender {
   // NSLog(@"%d",[sender tag]);
    [self.delegate changeOffset:[sender tag]];
    
}
@end
