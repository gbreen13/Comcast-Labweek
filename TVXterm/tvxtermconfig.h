//
//  tvxtermconfig.h
//  TVXterm
//
//  Created by George Breen on 7/16/14.
//  Copyright (c) 2014 Labweek. All rights reserved.
//

#ifndef TVXterm_tvxtermconfig_h
#define TVXterm_tvxtermconfig_h

//#define USE_LOCAL 1

#define kJiraServerKey @"JiraServer"
#define kJiraProjectKey @"JiraProject"
#define kJiraApiKey @"JiraApiKey"

#ifdef USE_LOCAL

#define kDefaultJiraServer @"http://localhost:8080/"
#define kDefaultJiraProject @"VID"
#define kDefaultJiraApiKey @"a0fc8aad-35a8-4ce3-a21e-9f51d0620bdf"

#else

#define kDefaultJiraServer @"http://10.253.98.45:17000/jira/"
#define kDefaultJiraProject @"IFS"
#define kDefaultJiraApiKey @"6575ffd9-ed46-4ddf-bd8b-e73f8686b515"

#endif


#endif
