//
//  UWMMainViewController.h
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 5/5/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
@class UMMCoursesViewController;
@class UMWAboutViewControlller;

@interface UWMMainViewController : UIViewController

- (IBAction)sendEmail:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *courseButton;
@property (strong, nonatomic) IBOutlet UIButton *aboutUSButton;


@property (strong, nonatomic) IBOutlet UIButton *feedbackButton;



@property (strong, nonatomic) UMMCoursesViewController *coursesViewController;
@property (strong, nonatomic) UMWAboutViewControlller *aboutViewController;

@end
