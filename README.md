Comcast-Labweek
===============
TVXterm is a prototype built at Comcast during LabWeek July 2014.  The iPhonae and iPad app allows develoeprs at home
to take photos of screen shots and attach them to a Jira ticket and file that ticket on a remote Jira site.

For testing the site was a clone of the IFS database.  The app needs to be on the Comcast internel network to hit it.

The remote site can be configured in the settings screen.

The project uses the Jira Mobile Remote SDK and requires the Jira DB to have the Jira Mobile Connect plugin installed
in order to work.  The app communicates through the plug-in and the plug-in logs all bugs under the user name
jiraremoteuser.  Information about the source device is included in the ticket.

