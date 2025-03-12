# CopilotUsageGraph
Get the most recent activity data for enabled users of Microsoft 365 Copilot apps and export to CSV.

These PowerShell scripts will export M365 Copilot User Details using Graph API Beta getMicrosoft365CopilotUsageUserDetail.

## cpusrdetail.ps1 ##
Outputs a CSV file to your My Documents folder with the date and time when it was run.  E.g. 20250312_114000cpusrdetails.csv.

The CSV will include the following columns:
"reportRefreshDate","UserPrincipalName","DisplayName","LastActivityDate","copilotChatLastActivityDate","microsoftTeamsCopilotLastActivityDate","wordCopilotLastActivityDate","excelCopilotLastActivityDate","powerPointCopilotLastActivityDate","outlookCopilotLastActivityDate","oneNoteCopilotLastActivityDate","loopCopilotLastActivityDate"

## cpuserdetailshistory.ps1 ##
On the first run will outputs a CSV file to your My Documents folder cpuserdetailshistory.csv.

The CSV will include the following columns:
"reportRefreshDate","UserPrincipalName","DisplayName","LastActivityDate","copilotChatLastActivityDate","microsoftTeamsCopilotLastActivityDate","wordCopilotLastActivityDate","excelCopilotLastActivityDate","powerPointCopilotLastActivityDate","outlookCopilotLastActivityDate","oneNoteCopilotLastActivityDate","loopCopilotLastActivityDate"

On each run will append to the existing CSV if the UserPrincipalName, LastActivityDate are unique.

The resulting file will help you discern user intensity over time. 
