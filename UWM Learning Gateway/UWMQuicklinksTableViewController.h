//
//  UWMQuicklinksTableViewController.h
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 5/6/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UWMQuicklinksTableViewController : UITableViewController
@property(strong,nonatomic) NSDictionary *linksData;
@property(strong,nonatomic) NSArray *linksTitle;
@property(strong,nonatomic) NSArray *linksContent;

@property (weak, nonatomic) IBOutlet UIButton *homeButton;

@end
