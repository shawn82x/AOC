//
//  AppDelegate.m
//  Morgart_AOC1_project1
//
//  Created by Shawn Morgart on 5/31/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    // Set my floating point variable
    float currentHour = 24.5f;
    
    // Use my float variable from above and Cast it as an integer
    int roundedHour = (int)currentHour;
    
    // Use NSLog to show both variables in the console
    NSLog(@"currentHour=%.1f", currentHour);
    NSLog(@"roundedHour=%d", roundedHour);
    
    // if, else statements coupled with AND, OR statements
    
    if ((currentHour > 0) && (currentHour < 1))
    {
        NSLog(@"An hour has not yet passed.");
    }
    else if ((currentHour > 1) && (currentHour < 2))
    {
        NSLog(@"One hour has passed today.");
    }
    else if ((currentHour > 2) && (currentHour < 24))
    {
        NSLog(@"Another hour has passed today.");
    }
    else if ((currentHour > 24) || (currentHour < 0))
    {
        NSLog(@"It is a New Day!");
    }
    
    // single "for" loop
    for (int roundedHour=0; roundedHour < 25; roundedHour++) {
        NSLog(@"hello: %d", roundedHour);
    }
    
    // "Nested" "for" loop
    for (int roundedHour=1; roundedHour < 25; roundedHour++) {
        for (int hourMin=0; hourMin < 60; hourMin++) {
            NSLog(@"Current Time is: %d:%d", roundedHour, hourMin);        }
    }
    
    // "While" loop
    int dayOfMonth = 1;
    
    while (dayOfMonth < 32) {
        NSLog(@"The date is: %d", dayOfMonth);
        dayOfMonth++;
    }
    
    
    // Putting them all together
    int monthDay = 1;
    
    do {
        NSLog(@"The day of the month is: %d", monthDay);
        for (int roundedHour=1; roundedHour < 25; roundedHour++) {
            for (int hourMin=0; hourMin < 60; hourMin++) {
                NSLog(@"Current Time is: %d:%d", roundedHour, hourMin);        }
        }
        monthDay++;
    } while (monthDay < 32);
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
