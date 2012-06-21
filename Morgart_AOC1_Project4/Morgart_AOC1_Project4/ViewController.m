//
//  ViewController.m
//  Morgart_AOC1_Project4
//
//  Created by Shawn Morgart on 6/20/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
// set background color to cyan
    self.view.backgroundColor = [UIColor darkGrayColor];
    
// 1. Create a UILabel near the top of your screen with teh text "Username:" in it.
    userLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 90.0f, 20.0f)];
    if (userLabel != nil)
    {
        userLabel.backgroundColor = [UIColor darkGrayColor];
        userLabel.text = @"Username:";
        userLabel.textAlignment = UITextAlignmentLeft;
    }
    
    
// 2. Create a UITextField to the right of the username label
    userText = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 20.f)];
    if (userText != nil)
    {
        userText.backgroundColor = [UIColor lightGrayColor];
    }
    
// 3. Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(230.0f, 40.0f, 80.0f, 30.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        // 5. (part a) Add a target to the UIButton to call a function called onClick when the user presses the Login button.
        [loginButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:loginButton];
    }
    
// 4. Create another UILabel beneath with the default text "Please Enter Username".
    plsText = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 100.0f, 280.0f, 60.0f)];
    if (plsText != nil)
    {
        plsText.backgroundColor = [UIColor lightGrayColor];
        plsText.text = @"Please Enter Username.";
        plsText.textAlignment = UITextAlignmentCenter;
    }
    

    
    
    
    [self.view addSubview:plsText];
    [self.view addSubview:userLabel];
    [self.view addSubview:userText];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// 5. (part b) Add a target to the UIButton to call a function called onClick when the user presses the Login button.
- (void) onClick
{
    UIAlertView
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
