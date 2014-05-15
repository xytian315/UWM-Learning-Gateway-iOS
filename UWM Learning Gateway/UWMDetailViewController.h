//
//  UWMDetailViewController.h
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 4/30/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UWMDetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) NSString* moduleTitle;
@property (strong, nonatomic) NSString* moduleLength;
@property (strong, nonatomic) NSString* moduleLink;

@property (weak, nonatomic) IBOutlet UITextView *courseDescription;
@property (weak, nonatomic) IBOutlet UILabel *courseTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *courseLengthLabel;
- (IBAction)goToModule:(id)sender;

@end
