//
//  AppDelegate.h
//  TVXterm
//
//  Created by George Breen on 7/15/14.
//  Copyright (c) 2014 Labweek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tvxtermconfig.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    NSString *jiraServer, *jiraProject, *jiraApiKey;
}

@property (nonatomic, retain) NSString *jiraServer, *jiraProject, *jiraApiKey;

@property (strong, nonatomic) UIWindow *window;

@end
