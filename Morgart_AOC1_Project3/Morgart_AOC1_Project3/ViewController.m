//
//  ViewController.m
//  Morgart_AOC1_Project3
//
//  Created by Shawn Morgart on 6/13/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    
    // 1. Call function called "Add".
    [self myAdd:@"The result for the myAdd function is:" firstInt:2 secondInt:4];
    
    // 2. Call function called "Compare".
    [self myCompare:@"When comparing..." firstInt2:3 secondInt2:4];
    
    // 3. Call function called "Append".
    [self myAppend:@"This is the first half of my string..."];
   
    
    // 4. Display "Append" function in UIAlertView
    UIAlertView *appendView = [[UIAlertView alloc] initWithTitle:@"Append Function View" message:@"" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if (appendView != nil)
    {
        [appendView show];
    }
    
    [super viewDidAppear:animated];
    
    
    
    
}

// 1. Create a function called Add. 
//    This function will take two NSInteger or int types and 
//    return the result of an addition between these two.

- (void)myAdd:(NSString*)introString firstInt:(int)firstInt secondInt:(int)secondInt
    {
        int addedInts = (firstInt + secondInt);
        NSLog(@"%@ %d + %d = %d", introString, firstInt, secondInt, addedInts);
    }

// 2. Create a function called Compare that takes two NSInteger values. 
//    Return true or false based on whether the values are equal.

- (int)myCompare: (NSString*)introString2 firstInt2:(int)firstInt2 secondInt2:(int)secondInt2
    {
        if (firstInt2 == secondInt2)
            {
                NSLog(@"%@ %d to %d we find they are Equal", introString2, firstInt2, secondInt2);
                return TRUE;
            }
            else {
                NSLog(@"%@ %d to %d we find they are NOT equal", introString2, firstInt2, secondInt2);
                return FALSE;
            }
    }


// 3. Create a function called Append. 
//    This function will take two NSStrings and return a new NSString 
//    containing the appended strings using an NSMutableString and the Append method.

- (void)myAppend: (NSString*)appString1
    {
        NSMutableString *appString2 = [[NSMutableString alloc] initWithString:@"this is the second half of my string!"];
        NSLog(@"%@ %@", appString1, appString2);
        
    }


// 4. Call the Append function with two NSStrings. 
//    Capture the result and display a UIAlertView with 
//    the appended string using displayAlertWithString.
//  ABOVE.
                                                                                                  


// 5. Create a function called DisplayAlertWithString. 
//    This function will take as a parameter an NSString.
                                                                                                  
- (void) myDisplayAlertWithString: (NSString*)displString
    {
        
    }
                                                                                                  
                                                                                                  
// 6. Call the Add function passing in two integer values. 
//    Capture the return of this function into a variable.


// 7. Bundle the returned integer into an NSNumber and then convert it 
//    to a NSString and pass it to the DisplayAlertWithString function.


// 8. Give it some text for the title. 
//    The message will read, "The number is 00". 
//    Replace the 00 with the integer passed into the function.


// 9. Call the Compare function with two integer values. 
//    If Compare returns true, display an UIAlertView both with the input values 
//    and the result using the DisplayAlertWithString function


// DisplayAlertWithString Function
// 1. Take the passed in NSString and display it in the alert view
// 2. Create an UIAlertView



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
