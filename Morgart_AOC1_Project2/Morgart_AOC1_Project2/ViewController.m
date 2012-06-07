//
//  ViewController.m
//  Morgart_AOC1_Project2
//
//  Created by Shawn Morgart on 6/6/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0.451 blue:0.235 alpha:1.0];
    UILabel *authLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 768.0f, 40.0f)];
    if (authLabel != nil)
    {
        authLabel.backgroundColor = [UIColor colorWithRed:1 green:0.537 blue:0 alpha:1.0];
        authLabel.text = @"The Lion of Ireland";
        authLabel.textAlignment = UITextAlignmentCenter;
        authLabel.textColor = [UIColor colorWithRed:0.651 green:0.137 blue:0 alpha:1.0];
        
        
    }
    
    [self.view addSubview:authLabel];
	
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
