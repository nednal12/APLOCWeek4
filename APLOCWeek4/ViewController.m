//
//  ViewController.m
//  APLOCWeek4
//
//  Created by Brent Marohnic on 12/13/12.
//  Copyright (c) 2012 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
//-------------------------------  lblUserName  -----------------------------------------
    
    lblUserName = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 25.0f, 100.0f, 30.0f)];
    
    if (lblUserName != nil)
    {
        
        lblUserName.text = @"Username:";
        lblUserName.backgroundColor = [UIColor lightGrayColor];
        [self.view addSubview:lblUserName];

    }
    
//-------------------------------  txtUserName  -----------------------------------------
    
    txtUserName = [[UITextField alloc] initWithFrame: CGRectMake(105.0f, 25.0f, 200.0f, 30.0f)];
    
    if (txtUserName != nil)
    {
        txtUserName.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:txtUserName];
    }

//-------------------------------  btnUserName  -----------------------------------------
    
    btnUserName = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (btnUserName != nil)
    {
        
        btnUserName.tag = 0;
        btnUserName.Frame = CGRectMake(230.0f, 65.0f, 70.0f, 30.0f);
        [btnUserName setTitle:@"Login" forState:UIControlStateNormal];
        [btnUserName addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btnUserName];
        
    }
    
//-------------------------------  lblStatMsg  ------------------------------------------
    
    lblStatMsg = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 120.0f, 320.0f, 60.0f)];
    
    if (lblStatMsg != nil)
    {
        
        lblStatMsg.text = @"Please Enter Username";
        lblStatMsg.backgroundColor = [UIColor darkGrayColor];
        lblStatMsg.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:lblStatMsg];
        
    }

//-------------------------------  btnShowDate  ------------------------------------------
    
    btnShowDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (btnShowDate != nil)
    {
        
        btnShowDate.tag = 1;
        btnShowDate.Frame = CGRectMake(10.0f, 250.0f, 100.0f, 50.0f);
        [btnShowDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [btnShowDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btnShowDate];
        
    }

//-------------------------------  btnDeveloper  ------------------------------------------
    
    btnDeveloper = [UIButton buttonWithType:UIButtonTypeInfoLight];
    
    if (btnDeveloper != nil)
    {
        
        btnDeveloper.tag = 2;
        btnDeveloper.Frame = CGRectMake(10.0f, 360.0f, 30.0f, 30.0f);
        [btnDeveloper addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btnDeveloper];
        
    }

//-------------------------------  lblDeveloper  ------------------------------------------
    
    lblDeveloper = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 400.0f, 320.0f, 60.0f)];
    
    if (lblStatMsg != nil)
    {
        
        lblDeveloper.text = @"This application was writtern by Brent Marohnic.";
        lblDeveloper.backgroundColor = [UIColor lightGrayColor];
        lblDeveloper.numberOfLines = 2;
        
        
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onClick:(id)whichOne
{
    
    switch ([whichOne tag])
    {
        case 0:
            
            if (txtUserName.text.length == 0)
            {
                [lblStatMsg setText:@"Username cannot be empty."];
            }
            else
            {
                [lblStatMsg setText:[NSString stringWithFormat:@"User: %@ has been logged in.", [txtUserName text]]];
            }

            break;
            
        case 1:
        {
            date = [NSDate date];
            
            dateFormatter = [[NSDateFormatter alloc] init];
            
            if (date != nil)
            {
                [dateFormatter setDateStyle:NSDateFormatterLongStyle];
                [dateFormatter setTimeStyle:NSDateFormatterFullStyle];
                
                NSString *dateString = [[NSString alloc] initWithString:[dateFormatter stringFromDate:date]];
                
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Date" message: [NSString stringWithFormat:@"%@", dateString] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                
                [alertView show];
                
            }
            
            break;
            
        }
        default:
        {
            [self.view addSubview:lblDeveloper];
        }
            break;
    }
}

@end
