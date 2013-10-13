//
//  MainViewController.m
//  DefinedView
//
//  Created by administrator on 13-9-3.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "DefinedView.h"
@implementation MainViewController
@synthesize scrollView;
@synthesize assiScrollView;
@synthesize pageControl;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   // [[NSBundle mainBundle] pathForResource:@"Winter" ofType:@"jpg"];
    NSArray* paths = [[NSBundle mainBundle]pathsForResourcesOfType:@"jpg" inDirectory:nil];
    scrollView.contentSize = CGSizeMake(320*[paths count], 170);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.pagingEnabled = YES;
    pageControl.numberOfPages = [paths count];
    for (int i = 0; i<[paths count]; i++) {
        UIImage* image = [UIImage imageWithContentsOfFile:[paths objectAtIndex:i]];
        UIImageView* imageView = [[UIImageView alloc]initWithImage:image];
        imageView.frame = CGRectMake(320*i, 0, 320, 174);
        [scrollView addSubview:imageView];
        [imageView release];
    }
    
    assiScrollView.contentSize = CGSizeMake(160*[paths count], 114);
    for (int i = 0; i<[paths count]; i++) {
      
        DefinedView* view = [[DefinedView alloc]initWithFrame:CGRectMake(160*i, 0, 160, 114)];
        view.delegate = self;
        view.button.tag = i;
        [view.button setBackgroundImage:[UIImage imageWithContentsOfFile:[paths objectAtIndex:i]] forState:UIControlStateNormal];
        [assiScrollView addSubview:view];
    }
}

-(void)changeOffset:(int)index{
   // scrollView.contentOffset = CGPointMake(320*index, 0);
    [scrollView scrollRectToVisible:CGRectMake(320*index, 0,320,174) animated:YES];
}

-(void)scrollViewDidScroll:(UIScrollView *)_scrollView{
   // NSLog(@"scroll");
   CGPoint offset =  scrollView.contentOffset;
    pageControl.currentPage = (int)offset.x/320;
    
   // [assiScrollView scrollRectToVisible:CGRectMake(160* pageControl.currentPage, 0,320,174) animated:YES];

}

- (void)viewDidUnload
{
    [self setScrollView:nil];
    [self setAssiScrollView:nil];
    [self setPageControl:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
   
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pageChnaged:(id)sender {
    scrollView.contentOffset = CGPointMake(320*pageControl.currentPage, 0);
}
@end
