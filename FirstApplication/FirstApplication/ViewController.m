//
//  ViewController.m
//  FirstApplication
//
//  Created by Sadamatsu Yuichiro on 2013/02/04.
//  Copyright (c) 2013年 Sadamatsu Yuichiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize inputtextfield;
@synthesize outputlabel;

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    inputtextfield.text = nil;
    outputlabel.text = nil;
    
}
- (void)viewDidUnload
{
    [self setInputtextfield:nil];
    [self setOutputlabel:nil];
    [super viewDidUnload];
}

/*
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)
    InterfaceOrientation {
    if ([[UIDevice currentDevice] userInterfaceIdiom] ==
        UIUserInterfaceIdiomPhone)
    {
        return (InterfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
- (IBAction)clickbutton:(UIButton *)sender {
    NSString * inputstring = self.inputtextfield.text ;
    self.outputlabel.text = inputstring ;
//    NSLog(@"(%@) (%@)",inputstring, outputlabel );
}
@end
