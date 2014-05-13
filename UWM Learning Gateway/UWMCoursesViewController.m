//
//  UWMCoursesViewController.m
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 5/2/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import "UWMCoursesViewController.h"
#import "UWMDetailViewController.h"


@interface UWMCoursesViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation UWMCoursesViewController
@synthesize coursesData,devCoursesData,segmentedControl;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
 
    self.navigationItem.title = @"eLearning Modules";
     self.navigationController.navigationBar.barTintColor =  [UIColor colorWithRed:249/255.0 green:247/255.0 blue:231/255.0 alpha:1];
    
    //get the plists and parse the data into ViewController
   
    
    self.coursesData = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource: @"ActiveCourses" ofType: @"plist"]];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [coursesData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return _objects.count;
    return [[[[coursesData objectAtIndex: section] objectForKey: @"courses"] objectForKey:@"courseTitle" ] count];
}

-(NSString *)tableView:(UITableView*) tableView titleForHeaderInSection:(NSInteger)section{
    return [[coursesData objectAtIndex: section] objectForKey: @"sectionTitle"];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    //    NSDate *object = _objects[indexPath.row];
    //    cell.textLabel.text = [object description];
    
    NSString *titleOfCourses = [[[[coursesData objectAtIndex: indexPath.section] objectForKey: @"courses"] objectForKey:@"courseTitle"] objectAtIndex:indexPath.row];
    cell.textLabel.text = titleOfCourses;
    
    NSNumber *lengthOfCourse = [[[[coursesData objectAtIndex: indexPath.section] objectForKey: @"courses"] objectForKey:@"courseLength"] objectAtIndex:indexPath.row];;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ minutes",lengthOfCourse];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return NO;
}

//- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (editingStyle == UITableViewCellEditingStyleDelete) {
//        [_objects removeObjectAtIndex:indexPath.row];
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
//        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
//    }
//}

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
//        NSDate *object = _objects[indexPath.row];
//        self.detailViewController.detailItem = object;
//    }
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.activeCourseTableView indexPathForSelectedRow];
        //        NSDate *object = _objects[indexPath.row];
        NSString *descriptionOfCourse =[[[[coursesData objectAtIndex: indexPath.section] objectForKey: @"courses"] objectForKey:@"courseDescription"] objectAtIndex:indexPath.row];;
        [[segue destinationViewController] setDetailItem:descriptionOfCourse];
    }
}




- (IBAction)segementValueChanged:(UISegmentedControl *)sender {
   
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.coursesData = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource: @"ActiveCourses" ofType: @"plist"]];
            break;
        case 1:
            self.coursesData=[NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource: @"InDevelopCourses" ofType: @"plist"]];
        default:
            break;
    }
  
    
    // reload data based on the new index
    [self.activeCourseTableView reloadData];

    
    
//    switch (sender.selectedSegmentIndex) {
//        case 0:
//            self.activeCourseTableView.hidden =NO;
//            self.devCourseTableView.hidden=YES;
//            break;
//        case 1:
//            self.activeCourseTableView.hidden=YES;
//            self.devCourseTableView.hidden = NO;
//            break;
//        default:
//            self.activeCourseTableView.hidden =NO;
//            self.devCourseTableView.hidden=YES;
//            break;
//    }
}
@end
