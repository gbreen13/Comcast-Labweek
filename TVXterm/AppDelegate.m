//
//  AppDelegate.m
//  TVXterm
//
//  Created by George Breen on 7/15/14.
//  Copyright (c) 2014 Labweek. All rights reserved.
//

#import "AppDelegate.h"
#import "JMC.h"
#import "JMCRequestQueue.h"

@implementation AppDelegate

@synthesize jiraApiKey, jiraProject, jiraServer;

//
// User needs to set the server, project and apiKEY.  Return if they did.
//
-(BOOL) getDefaults
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if(((jiraServer = [defaults stringForKey:kJiraServerKey]) == nil) ||
        ((jiraProject = [defaults stringForKey:kJiraProjectKey]) == nil) ||
       ((jiraApiKey = [defaults stringForKey:kJiraApiKey]) == nil)) {
        NSDictionary* defaults = @{kJiraServerKey: jiraServer = kDefaultJiraServer, kJiraProjectKey: jiraProject = kDefaultJiraProject, kJiraApiKey : jiraApiKey = kDefaultJiraApiKey};
        [[NSUserDefaults standardUserDefaults] registerDefaults:defaults];
    }
        
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    if([self getDefaults] == YES) {
        [[JMC sharedInstance]
         configureJiraConnect:jiraServer
         projectKey:jiraProject
         apiKey:jiraApiKey
         location:YES
         dataSource:nil];
    } else {
// Local Jira installation for testing
        
        [[JMC sharedInstance]
             configureJiraConnect:@"http://localhost:8080/"
             projectKey:@"VID"
             apiKey:@"a0fc8aad-35a8-4ce3-a21e-9f51d0620bdf"
             location:YES
             dataSource:nil];
/*
// Comcast Jira instance
 
        [[JMC sharedInstance]
         configureJiraConnect:@"http://10.253.98.45:17000/jira/"
         projectKey:@"IFS"
         apiKey:@"6575ffd9-ed46-4ddf-bd8b-e73f8686b515"
         location:YES
     dataSource:nil];
*/
    }
    [[JMCRequestQueue sharedInstance] flushQueue];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
