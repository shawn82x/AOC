//
//  ViewController.m
//  Morgart_AOC1_Project4
//
//  Created by Shawn Morgart on 6/20/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

#define B_INPUT 0
#define B_DATE 1
#define B_INFO 2

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
    userInput = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.f)];
    if (userInput != nil)
    {
        userInput.backgroundColor = [UIColor lightGrayColor];
        userInput.borderStyle = UITextBorderStyleRoundedRect;
    }
    
// 3. Create a rounded rectangle UIButton of any color under the UITextField with the text "Login" on it.
    loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(230.0f, 45.0f, 80.0f, 30.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        
        // 5. (part a) Add a target to the UIButton to call a function called onClick when the user presses the Login button.
        loginButton.tag = 0;
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
    
// Date Button
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(10.0f, 250.0f, 100.0f, 30.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        dateButton.tag = 1;
        [dateButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:dateButton];
    }
    

    
// Information Button
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(10.0f, 350.0f, 20.0f, 20.0f);
        infoButton.tag = 2;
        [self.view addSubview:infoButton];
    }
    
    
    [self.view addSubview:plsText];
    [self.view addSubview:userLabel];
    [self.view addSubview:userInput];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

// 5. (part b) Add a target to the UIButton to call a function called onClick when the user presses the Login button.
- (void) onClick: (UIButton*)button
{
    if (button.tag == B_INPUT)
    {
        NSString *loginText = [userInput text];
        
        plsText = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 100.0f, 280.0f, 60.0f)];
        if (plsText != nil)
        {
            plsText.backgroundColor = [UIColor lightGrayColor];
            plsText.text = @"User: %@, has been logged in.", loginText;
            plsText.textAlignment = UITextAlignmentCenter;
        }
    }
    else if (button.tag == B_DATE)
    {
        
    }
    else if (button.tag == B_INFO)
    {
        
    }
        
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
