//
//  ViewController.m
//  TVXterm
//
//  Created by George Breen on 7/15/14.
//  Copyright (c) 2014 Labweek. All rights reserved.
//

#import "ViewController.h"
#import "JMC.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [JMC sharedInstance].customDataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSDictionary *)customFields
{
    return [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"P1", @"42" , @"43", @"label1 label2 label3 space separated", nil]
                                       forKeys:[NSArray arrayWithObjects:@"priority", @"jmctestfield", @"jmctestfield2", @"customlabels", nil]];
}

-(IBAction) createIssues:(id)sender
{
//    [self performSegueWithIdentifier:@"MatchSettingsSegue" sender:sender];
    [self presentViewController:[[JMC sharedInstance] feedbackViewController] animated:YES completion:nil];

}
-(IBAction) listIssues:(id)sender
{
    [self presentViewController:[[JMC sharedInstance] issuesViewController] animated:YES completion:nil];
}
@end
