//
//  MainViewController.h
//  DefinedView
//
//  Created by administrator on 13-9-3.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController<UIScrollViewDelegate> {
    UIScrollView *scrollView;
    UIScrollView *assiScrollView;
    UIPageControl *pageControl;
}

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIScrollView *assiScrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;
- (IBAction)pageChnaged:(id)sender;
-(void)changeOffse:(int)index;
@end
