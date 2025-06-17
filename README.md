# CopilotUsageGraph
Get the most recent activity data for enabled users of Microsoft 365 Copilot apps and export to CSV.  Build a user leaderboard.

Notes:\
-These PowerShell scripts will export M365 Copilot User Details using Graph API Beta getMicrosoft365CopilotUsageUserDetail.
-The user running this script will need "Reports.Read.All" Graph API Pemission.

IMPORTANT:  Copilot activity data in Microsoft Admin Center and Graph API becomes available within 72 hours of the end of that day (in UTC).

For step-by-step walkthrough on how to utilize Graph API and build user leaderboard, see this video:

  ![](https://github.com/Hickey7737/CopilotUsageGraph/blob/main/vid%20thumb.png)
  
  [https://www.youtube.com/watch?v=QNyZxOiL6cs](https://youtu.be/u_b0eMi6mSc)
  
## cpusrdetail.ps1 ##
Exports M365 Copiot User Usage. Outputs a CSV file to your My Documents folder with the date and time when it was run.  E.g. 20250312_114000cpusrdetails.csv.

The CSV will include the following columns:
"reportRefreshDate","UserPrincipalName","DisplayName","LastActivityDate","copilotChatLastActivityDate","microsoftTeamsCopilotLastActivityDate","wordCopilotLastActivityDate","excelCopilotLastActivityDate","powerPointCopilotLastActivityDate","outlookCopilotLastActivityDate","oneNoteCopilotLastActivityDate","loopCopilotLastActivityDate"

## cpuserdetailshistory.ps1 ##
On the first run will outputs a CSV file to your My Documents folder cpuserdetailshistory.csv.  Schedule this script to run daily.  Over time will build a history of not just the last time they used Copilot but how many days they used it.  

The CSV will include the following columns:
"reportRefreshDate","UserPrincipalName","DisplayName","LastActivityDate","copilotChatLastActivityDate","microsoftTeamsCopilotLastActivityDate","wordCopilotLastActivityDate","excelCopilotLastActivityDate","powerPointCopilotLastActivityDate","outlookCopilotLastActivityDate","oneNoteCopilotLastActivityDate","loopCopilotLastActivityDate"

On each run will append to the existing CSV if the UserPrincipalName and LastActivityDate are unique.

The resulting file will help you discern user intensity over time. 
