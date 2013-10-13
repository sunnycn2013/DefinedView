//
//  DefinedView.h
//  DefinedView
//
//  Created by administrator on 13-9-3.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DefinedView : UIView{
    IBOutlet UIView* view;
    UIButton *button;
    id delegate;
}
@property (assign, nonatomic) id delegate;
@property (retain, nonatomic) IBOutlet UIButton *button;
- (IBAction)showDetailView:(id)sender;

@end
