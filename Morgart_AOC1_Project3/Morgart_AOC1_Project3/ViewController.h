//
//  ViewController.h
//  Morgart_AOC1_Project3
//
//  Created by Shawn Morgart on 6/13/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int oldSwords;
    int newSwords;
    int totalSwords;
    int fighters;
    
    NSString *commandRespond;
    NSString *generalsOrders;
    NSString *soldiersResponse;
    NSString *armedSoldiers;
    NSString *availSwords;
    NSString *armory;
    NSString *totalSwordsString;
    NSString *appString1;
    NSString *appString2; 
    NSString *appString3;
    
    NSNumber *numOfWeapons;
    
    UIAlertView *dispString;
}
// 1.
//- (void)myAdd:(NSString*)introString firstInt:(int)firstInt secondInt:(int)secondInt;
- (int)Add:(int)firstInt with:(int)secondInt;

// 2.
//- (int)myCompare: (NSString*)introString2 firstInt2:(int)firstInt2 secondInt2:(int)secondInt2;
- (BOOL)Compare:(int)firstInt2 with:(int)secondInt2;

// 3.
//- (void)myAppend: (NSString*)appString1;
- (NSString*)append: (NSString*)appString1 with:(NSString*)appString2;

// 4.
//- (void)myAppend: (NSString*)appString1 appString2:(NSString*)appString2;

// 5.
//- (void) myDisplayAlertWithString: (NSString*)appString3;

@end
