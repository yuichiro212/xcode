//
//  RootViewController.h
//  PageViewControllerSample
//
//  Created by taisuke fujita on 12/06/09.
//  Copyright (c) 2012年 Revolution 9. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UIPageViewControllerDelegate>

@property (strong, nonatomic) UIPageViewController *pageViewController;

@end
