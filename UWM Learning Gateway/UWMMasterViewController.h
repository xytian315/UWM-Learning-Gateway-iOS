//
//  UWMMasterViewController.h
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 4/30/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UWMDetailViewController;

@interface UWMMasterViewController : UITableViewController

@property(strong,nonatomic) NSDictionary *courses;
@property(strong,nonatomic) NSArray *status;
@property(strong,nonatomic) NSArray *title;
@property(strong,nonatomic) NSArray *length;
@property(strong,nonatomic) NSArray *category;
@property(strong,nonatomic) NSArray *description;

@property (strong, nonatomic) UWMDetailViewController *detailViewController;

@end
