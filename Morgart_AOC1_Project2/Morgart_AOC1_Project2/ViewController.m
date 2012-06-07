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
    
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 768.0f, 40.0f)];
    if (titleLabel != nil)
    {
        titleLabel.backgroundColor = [UIColor colorWithRed:1 green:0.537 blue:0 alpha:1.0];
        titleLabel.text = @"The Lion of Ireland";
        titleLabel.textAlignment = UITextAlignmentCenter;
        titleLabel.textColor = [UIColor colorWithRed:0.651 green:0.137 blue:0 alpha:1.0];
        titleLabel.font = [UIFont boldSystemFontOfSize:24];
    }
    
    authLabel = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 60.0f, 184.0f, 20.0f)];
    if (authLabel != nil)
    {
        authLabel.backgroundColor = [UIColor colorWithRed:0.137 green:0.365 blue:0.475 alpha:1.0];
        authLabel.text = @"Author:";
        authLabel.textAlignment = UITextAlignmentRight;
        authLabel.textColor = [UIColor colorWithRed:0.388 green:0.678 blue:0.816 alpha:1.0];
        authLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(484.0f, 60.0f, 184.0f, 20.0f)];
    if (nameLabel != nil)
    {
        nameLabel.backgroundColor = [UIColor colorWithRed:1 green:0.208 blue:0 alpha:1.0];
        nameLabel.text = @"Morgan Llewellyn";
        nameLabel.textAlignment = UITextAlignmentLeft;
        nameLabel.textColor = [UIColor colorWithRed:1 green:0.565 blue:0.451 alpha:1.0];
        nameLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    pubLabel = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 100.0f, 184.0f, 20.0f)];
    if (pubLabel != nil)
    {
        pubLabel.backgroundColor = [UIColor colorWithRed:0.651 green:0.349 blue:0 alpha:1.0];
        pubLabel.text = @"Published:";
        pubLabel.textAlignment = UITextAlignmentRight;
        pubLabel.textColor = [UIColor colorWithRed:1 green:0.651 blue:0.251 alpha:1.0];
        pubLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    [self.view addSubview:titleLabel];
    [self.view addSubview:authLabel];
    [self.view addSubview:nameLabel];
    [self.view addSubview:pubLabel];
	
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
