# CopilotUsageGraph
Get the most recent activity data for enabled users of Microsoft 365 Copilot apps and export to CSV.

These PowerShell scripts will export M365 Copilot User Details using GraphAPI Beta getMicrosoft365CopilotUsageUserDetail.

## cpusrdetail.ps1 ##
Outputs a CSV file to your MyDocuments folder with the date and time when it was run.  E.g. 20250312_114000cpusrdetails.csv

The CSV will include the following columns:
"reportRefreshDate","UserPrincipalName","DisplayName","LastActivityDate","copilotChatLastActivityDate","microsoftTeamsCopilotLastActivityDate","wordCopilotLastActivityDate","excelCopilotLastActivityDate","powerPointCopilotLastActivityDate","outlookCopilotLastActivityDate","oneNoteCopilotLastActivityDate","loopCopilotLastActivityDate"
