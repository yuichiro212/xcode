//
//  ViewController.h
//  FirstApplication
//
//  Created by Sadamatsu Yuichiro on 2013/02/04.
//  Copyright (c) 2013年 Sadamatsu Yuichiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *inputtextfield;

@property (weak, nonatomic) IBOutlet UILabel *outputlabel;

- (IBAction)clickbutton:(UIButton *)sender;
@end
