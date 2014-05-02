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

@property(strong,nonatomic) NSArray *coursesData;
@property(strong,nonatomic) NSArray *courseTitle;
@property(strong,nonatomic) NSArray *courseLength;
@property(strong,nonatomic) NSArray *courseDescription;


@property (strong, nonatomic) UWMDetailViewController *detailViewController;

@end
