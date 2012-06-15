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
    //[self myAdd:@"The result for the myAdd function is:" firstInt:2 secondInt:4];
    
    oldSwords = 7;
    newSwords = 8;
    totalSwords = [self Add:oldSwords with:newSwords];
    numOfWeapons = [[NSNumber alloc] initWithInt:totalSwords];
    availSwords = [numOfWeapons stringValue];
    totalSwordsString = [[NSString alloc] initWithFormat:@"%@", numOfWeapons];
    armory = [[NSString alloc] initWithFormat:@"The number of aged swords is: %d, the number of newly purchased swords is: %d, the total availabe usable weapons is: %@."];
    
    
    // 2. Call function called "Compare".
    // [self myCompare:@"When comparing..." firstInt2:3 secondInt2:4];
    
    fighters = 15;
    BOOL swordsUsed = [self Compare:totalSwords with:fighters];
    armedSoldiers = [[NSString alloc] initWithFormat:@"Is %d enough swords for %d fighters?", totalSwords, fighters? @"Yes, They are armed and ready!": @"No, We need more weapons!"];
    
    
    // 3. Call function called "Append".
    // [self myAppend:@"This is the first half of my string..." appString2:@"this is the second half of my string"];
    
    generalsOrders = [[NSString alloc] initWithFormat:@"At your Ready!"];
    soldiersResponse = [[NSString alloc] initWithFormat:@"Huzzah!"];
    commandRespond = [self append:generalsOrders with:soldiersResponse];
    
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

- (int)Add:(int)firstInt with:(int)secondInt
    {
        return firstInt + secondInt;
    }

// 2. Create a function called Compare that takes two NSInteger values. 
//    Return true or false based on whether the values are equal.

- (BOOL)Compare:(int)firstInt2 with:(int)secondInt2
    {
        if (firstInt2 == secondInt2)
            {
                return YES;
            }
            else {
                return NO;
            }
    }


// 3. Create a function called Append. 
//    This function will take two NSStrings and return a new NSString 
//    containing the appended strings using an NSMutableString and the Append method.

- (NSString*)append: (NSString*)appString1 with:(NSString*)appString2
    {
        NSMutableString *appendOne = [NSMutableString addedString:appString1];
        NSString *appString3 = [appendOne stringByAppendingString:appString2];
        return appString3;
    }


// 4. Call the Append function with two NSStrings. 
//    Capture the result and display a UIAlertView with 
//    the appended string using displayAlertWithString.
//  ABOVE.
                                                                                                  


// 5. Create a function called DisplayAlertWithString. 
//    This function will take as a parameter an NSString.
                                                                                                  
- (void) myDisplayAlertWithString: (NSString*)appString3
    {
        dispString = [[UIAlertView alloc] initWithTitle:@"Alert View" message:appString3 delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
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
