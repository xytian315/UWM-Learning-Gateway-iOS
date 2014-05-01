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

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
