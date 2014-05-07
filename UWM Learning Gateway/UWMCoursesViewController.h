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
@property(strong,nonatomic) NSArray *devCoursesData;
@property (weak, nonatomic) IBOutlet UITableView *activeCourseTableView;
@property (weak, nonatomic) IBOutlet UITableView *devCourseTableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

- (IBAction)segementValueChanged:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UIButton *homeButton;

@property (strong, nonatomic) UWMDetailViewController *detailViewController;

@end
