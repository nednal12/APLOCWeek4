//
//  ViewController.h
//  APLOCWeek4
//
//  Created by Brent Marohnic on 12/13/12.
//  Copyright (c) 2012 Brent Marohnic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *lblUserName;
    UITextField *txtUserName;
    UIButton *btnUserName;
    UILabel *lblStatMsg;
    UIButton *btnShowDate;
}

-(void)onClick:(id)whichOne;

@end
