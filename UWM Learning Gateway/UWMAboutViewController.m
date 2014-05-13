//
//  UWMAboutViewController.m
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 5/7/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import "UWMAboutViewController.h"


@interface UWMAboutViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation UWMAboutViewController

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
    //[self.homeButton warningStyle];
   // self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    self.navigationItem.title = @"About us";
     self.navigationController.navigationBar.barTintColor =  [UIColor colorWithRed:249/255.0 green:247/255.0 blue:231/255.0 alpha:1];
    self.navigationController.navigationBar.TintColor = [UIColor colorWithRed:142/255.0 green:111/255.0 blue:12/255.0 alpha:1];
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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return _objects.count;
    
   if (section == 0) {
        return 6;
    }
    return 0;
    
}

-(NSString *)tableView:(UITableView*) tableView titleForHeaderInSection:(NSInteger)section{

    return nil;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AboutCell" forIndexPath:indexPath];
    
    //    NSDate *object = _objects[indexPath.row];
    //    cell.textLabel.text = [object description];
    
   if (indexPath.section == 0) {
        if(indexPath.row==0){
            cell.textLabel.text = @"Instructional Design";
            cell.detailTextLabel.text = @"Adult education, user experience design";
        }  else if(indexPath.row==1){
            cell.textLabel.text = @"eLearning Development";
            cell.detailTextLabel.text = @"Web development, Storyline, Lectora";
        } else if(indexPath.row ==2){
            cell.textLabel.text = @"eLearning Publishing";
            cell.detailTextLabel.text = @"LMS (SCORM) and web (standard)";
        }else if(indexPath.row ==3){
            cell.textLabel.text = @"Project Management";
            cell.detailTextLabel.text = @"Project intake, planning and tracking";
        }else if(indexPath.row ==4){
            cell.textLabel.text = @"LMS Domain Administration";
            cell.detailTextLabel.text = @"UW Medicine LMS platform";
        }else if(indexPath.row ==5){
            cell.textLabel.text = @"Technical Support";
            cell.detailTextLabel.text = @"Tier 2 and Tier 3 support ";
        }
    }

    
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
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.activeCourseTableView indexPathForSelectedRow];
//        //        NSDate *object = _objects[indexPath.row];
//        NSString *descriptionOfCourse =[[[[coursesData objectAtIndex: indexPath.section] objectForKey: @"courses"] objectForKey:@"courseDescription"] objectAtIndex:indexPath.row];;
//        [[segue destinationViewController] setDetailItem:descriptionOfCourse];
//    }
}





@end
