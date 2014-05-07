//
//  UWMMainViewController.h
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 5/5/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface UWMMainViewController : UIViewController
- (IBAction)showCourses:(id)sender;
- (IBAction)sendEmail:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *courseButton;
@property (weak, nonatomic) IBOutlet UIButton *aboutUSButton;
@property (weak, nonatomic) IBOutlet UIButton *quicklinksButton;

@property (weak, nonatomic) IBOutlet UIButton *feedbackButton;
@end
