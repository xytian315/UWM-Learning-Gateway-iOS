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
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    self.navigationItem.title = @"Learning Gateway";
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
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //return _objects.count;
    
   if (section == 0) {
        return 3;
    }else if(section == 1){
        return 4;
    }
    return 0;
    
}

-(NSString *)tableView:(UITableView*) tableView titleForHeaderInSection:(NSInteger)section{
   if (section == 0) {
        return @"Learning Gateway Operations";
    }else if(section ==1)
        return @"Learning Gateway Committee";
    return nil;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AboutCell" forIndexPath:indexPath];
    
    //    NSDate *object = _objects[indexPath.row];
    //    cell.textLabel.text = [object description];
    
   if (indexPath.section == 0) {
        if(indexPath.row==0){
            cell.textLabel.text = @"Simona Lazar";
            cell.detailTextLabel.text = @"Director";
        }  else if(indexPath.row==1){
            cell.textLabel.text = @"Caleb Pong";
            cell.detailTextLabel.text = @"Sr. eLearning/LMS Analyst";
        } else if(indexPath.row ==2){
            cell.textLabel.text = @"Brian Valentine";
            cell.detailTextLabel.text = @"eLearning/Web Developer";
        }
    }else if (indexPath.section == 1) {
        if(indexPath.row==0){
            cell.textLabel.text = @"Gene Peterson";
            cell.detailTextLabel.text = @"Associate Medical Director, Center for Clinical Excellence";
        }  else if(indexPath.row==1){
            cell.textLabel.text = @"Byron Joyner";
            cell.detailTextLabel.text = @"Associate Dean for Graduate Medical Education";
        } else if(indexPath.row ==2){
            cell.textLabel.text = @"Amity Neumeister";
            cell.detailTextLabel.text = @"Assistant Dean and Director of Graduate Medical Education";
        }else if(indexPath.row ==3){
            cell.textLabel.text = @"Susan Johnston";
            cell.detailTextLabel.text = @"Director of Education, Graduate Medical Education";
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
