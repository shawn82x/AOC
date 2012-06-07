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

// Set Label at top of page for Title of book:
// Modified background and font colors and font size.
    
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 768.0f, 40.0f)];
    if (titleLabel != nil)
    {
        titleLabel.backgroundColor = [UIColor colorWithRed:1 green:0.537 blue:0 alpha:1.0];
        titleLabel.text = @"The Lion of Ireland";
        titleLabel.textAlignment = UITextAlignmentCenter;
        titleLabel.textColor = [UIColor colorWithRed:0.651 green:0.137 blue:0 alpha:1.0];
        titleLabel.font = [UIFont boldSystemFontOfSize:24];
    }
    
    
// Set Label for "Author:" heading
// Modified background and font colors and font size.
    
    authLabel = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 60.0f, 184.0f, 20.0f)];
    if (authLabel != nil)
    {
        authLabel.backgroundColor = [UIColor colorWithRed:0.137 green:0.365 blue:0.475 alpha:1.0];
        authLabel.text = @"Author:";
        authLabel.textAlignment = UITextAlignmentRight;
        authLabel.textColor = [UIColor colorWithRed:0.388 green:0.678 blue:0.816 alpha:1.0];
        authLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    
// Set Label for the author's name:
// Modified background and font colors and font size.
    
    nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(484.0f, 60.0f, 184.0f, 20.0f)];
    if (nameLabel != nil)
    {
        nameLabel.backgroundColor = [UIColor colorWithRed:1 green:0.208 blue:0 alpha:1.0];
        nameLabel.text = @"Morgan Llewellyn";
        nameLabel.textAlignment = UITextAlignmentLeft;
        nameLabel.textColor = [UIColor colorWithRed:1 green:0.565 blue:0.451 alpha:1.0];
        nameLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    
// Set Label for "Published:" heading.
// Modified background and font colors and font size.
    
    pubLabel = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 100.0f, 184.0f, 20.0f)];
    if (pubLabel != nil)
    {
        pubLabel.backgroundColor = [UIColor colorWithRed:1 green:0.651 blue:0.251 alpha:1.0];
        pubLabel.text = @"Published:";
        pubLabel.textAlignment = UITextAlignmentRight;
        pubLabel.textColor = [UIColor colorWithRed:0.651 green:0.349 blue:0 alpha:1.0];
        pubLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    
// Set Label for the copyright date.
// Modified background and font colors and font size.
    
    pubTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(484.0f, 100.0f, 184.0f, 20.0f)];
    if (pubTextLabel != nil)
    {
        pubTextLabel.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0];
        pubTextLabel.text = @"Copyright 1981";
        pubTextLabel.textAlignment = UITextAlignmentLeft;
        pubTextLabel.textColor = [UIColor colorWithRed:0 green:0.6 blue:0.6 alpha:1.0];
        pubTextLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    
// Set Label for "Summary:" heading.
// Modified background and font colors and font size.
    
    sumLabel = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 140.0f, 184.0f, 20.0f)];
    if (sumLabel != nil)
    {
        sumLabel.backgroundColor = [UIColor colorWithRed:1 green:0.455 blue:0 alpha:1.0];
        sumLabel.text = @"Summary:";
        sumLabel.textAlignment = UITextAlignmentRight;
        sumLabel.textColor = [UIColor colorWithRed:0 green:0.8 blue:0 alpha:1.0];
        sumLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    
// Set Label and multiple line box for book summary.
// Modified background and font colors and font size.
    
    sumTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(400.0f, 140.0f, 268.0f, 160.0f)];
    if (sumTextLabel != nil)
    {
        sumTextLabel.backgroundColor = [UIColor colorWithRed:0.651 green:0.349 blue:0 alpha:1.0];
        sumTextLabel.text = @"This book is about Brien MacKennedi, aka Brien Boru, of Ireland. He was born in the late 900's and grew up fighting Vikings. Ultimately he attempts to unite all of Ireland under one king to bring peace to the land.";
        sumTextLabel.textAlignment = UITextAlignmentCenter;
        sumTextLabel.textColor = [UIColor colorWithRed:1 green:0.651 blue:0.251 alpha:1.0];
        sumTextLabel.font = [UIFont boldSystemFontOfSize:16];
        sumTextLabel.numberOfLines = 7;
    }

    
// Set Label for "List of Items:" heading.
// Modified background and font colors and font size.
    
    listLabel = [[UILabel alloc] initWithFrame:CGRectMake(292.0f, 360.0f, 184.0f, 40.0f)];
    if (listLabel != nil)
    {
        listLabel.backgroundColor = [UIColor colorWithRed:0 green:0.522 blue:0 alpha:1.0];
        listLabel.text = @"List of Items:";
        listLabel.textAlignment = UITextAlignmentLeft;
        listLabel.textColor = [UIColor colorWithRed:0.651 green:0 blue:0 alpha:1.0];
        listLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
// Create array to hold the list items.
    
    NSArray *itemArray = [[NSArray alloc] initWithObjects:@"Ireland", @"Vikings", @"War", @"Politics", @"Dark Ages", nil];
    
    
// Create Mutable NSArray for looping and modification.
    
    NSMutableString *itemArrayString = [[NSMutableString alloc] initWithCapacity:5];
    
    int counter;
    int itemSize = itemArray.count;
    
    for (counter = 0; counter < itemSize; counter++)
    {
        [itemArrayString appendString: [itemArray objectAtIndex: counter]];
        if (counter < itemArray.count -1)
            [itemArrayString appendString: @", "];
    }
    
    
// Create Label box to hold the list of items contained in the array.
// Modified background and font colors and font size.
    
    listTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(192.0f, 400.0f, 384.0f, 40.0f)];
    if (listTextLabel != nil)
    {
        listTextLabel.backgroundColor = [UIColor colorWithRed:0 green:0.6 blue:0.6 alpha:1.0];
        listTextLabel.text = itemArrayString;
        listTextLabel.textAlignment = UITextAlignmentCenter;
        listTextLabel.textColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1.0];
        listTextLabel.font = [UIFont boldSystemFontOfSize:16];
    }
    
    
// prepare all items above for actual display on the main view.
    
    [self.view addSubview:titleLabel];
    [self.view addSubview:authLabel];
    [self.view addSubview:nameLabel];
    [self.view addSubview:pubLabel];
    [self.view addSubview:pubTextLabel];
    [self.view addSubview:sumLabel];
    [self.view addSubview:sumTextLabel];
    [self.view addSubview:pubLabel];
    [self.view addSubview:listLabel];
    [self.view addSubview:listTextLabel];
	
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
