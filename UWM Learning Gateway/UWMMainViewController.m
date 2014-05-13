//
//  UWMMainViewController.m
//  UWM Learning Gateway
//
//  Created by Xiaoyi Tian on 5/5/14.
//  Copyright (c) 2014 Xiaoyi Tian. All rights reserved.
//

#import "UWMMainViewController.h"
#import "UWMCoursesViewController.h"



@interface UWMMainViewController () <MFMailComposeViewControllerDelegate>

@end

@implementation UWMMainViewController

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
   self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // [self.courseButton warningStyle];
    //[self.courseButton addAwesomeIcon:FAIconBookmark beforeTitle:YES];
    
    
//    [self.aboutUSButton warningStyle];
//    [self.quicklinksButton warningStyle];
//    [self.feedbackButton warningStyle];
   
    
    
    
    
//    self.courseButton.frame = CGRectMake(0, 0, 60, 40);
//    FIIcon *icon = [FIEntypoIcon leafIcon];
//    
//    FIIconLayer *layer = [FIIconLayer new];
//    layer.icon = icon;
//    layer.frame = self.courseButton.bounds;
//    layer.iconColor = [UIColor orangeColor];
//    [self.courseButton.layer addSublayer:layer];
//  
//    
  
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

- (IBAction)showCourses:(id)sender {
    UWMCoursesViewController *coursesviewController = [[UWMCoursesViewController alloc] initWithNibName:@"UWMCoursesViewController" bundle:nil];
    [self presentViewController:coursesviewController animated:YES completion:nil];
}

- (IBAction)sendEmail:(id)sender {
    NSLog(@"sender %@",[sender description]);
    
    
    NSString *iOSVersion = [[UIDevice currentDevice] systemVersion];
    NSString *model = [[UIDevice currentDevice] model];
    MFMailComposeViewController *mailComposer = [[MFMailComposeViewController alloc] init];
    mailComposer.mailComposeDelegate = self;
    [mailComposer setToRecipients:[NSArray arrayWithObjects: @"lgateway@uw.edu",nil]];
    [mailComposer setSubject:[NSString stringWithFormat: @"Learning Gateway Mobile App"]];
    NSString *supportText = [NSString stringWithFormat:@"Device: %@\niOS Version:%@\n\n",model,iOSVersion];
    supportText = [supportText stringByAppendingString: @""];
    [mailComposer setMessageBody:supportText isHTML:NO];
    [self presentViewController:mailComposer animated:YES completion:nil];
    
}
- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
