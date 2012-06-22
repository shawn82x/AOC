//
//  ViewController.h
//  Morgart_AOC1_Project4
//
//  Created by Shawn Morgart on 6/20/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *userLabel;
    UITextField *userInput;
    UIButton *loginButton;
    UILabel *plsText;
    UIButton *infoButton;
    UIButton *dateButton;
    
}

- (void) onClick: (UIButton*)button;

@end
