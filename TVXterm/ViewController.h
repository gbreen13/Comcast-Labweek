//
//  ViewController.h
//  TVXterm
//
//  Created by George Breen on 7/15/14.
//  Copyright (c) 2014 Labweek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JMCCustomDataSource.h"

@interface FirstViewController : UIViewController <JMCCustomDataSource>
-(IBAction) createIssues:(id)sender;
-(IBAction) listIssues:(id)sender;

@end
