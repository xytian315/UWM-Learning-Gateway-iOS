//
//  UWMCoursesViewController.h
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 5/2/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UWMDetailViewController;

@interface UWMCoursesViewController : UIViewController


@property(strong,nonatomic) NSArray *coursesData;

@property (strong, nonatomic) UWMDetailViewController *detailViewController;

@end
