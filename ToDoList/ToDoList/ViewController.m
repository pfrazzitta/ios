//
//  ViewController.m
//  ToDoList
//
//  Created by paulfrazzitta on 12/5/13.
//  Copyright (c) 2013 paulfrazzitta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, atomic) UIAlertView *alert;
@end

@implementation ViewController


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [_alert buttonTitleAtIndex:buttonIndex];
    
    
    
    if([title isEqualToString:@"Button 1"])
    {
        NSLog(@"Button 1 was selected.");
    }
    else if([title isEqualToString:@"Button 2"])
    {
        NSLog(@"Button 2 was selected.");
    }
    else if([title isEqualToString:@"Button 3"])
    {
        NSLog(@"Button 3 was selected.");
    }
}


- (IBAction)dialAction:(id)sender {
    
    if (_alert == nil)
    {
     _alert = [[UIAlertView alloc] initWithTitle:@"Look @ my lion"
                                 message:@""
                                delegate:self
                                cancelButtonTitle:@"Button 1"
                                otherButtonTitles:@"Button 2", nil];
    
      [_alert show];
    }
    else
      [_alert show];
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
