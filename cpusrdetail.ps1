# Install the Microsoft.Graph.Beta module if not already installed
if (-not (Get-Module -Name Microsoft.Graph.Beta -ListAvailable)) {
    Install-Module -Name Microsoft.Graph.Beta -Force -AllowClobber
}

# Import the Microsoft.Graph.Beta module
Import-Module Microsoft.Graph.Beta

# Connect to Microsoft Graph
Connect-MgGraph -Scopes "Reports.Read.All"
# Get Copilot user usage details for last 180 days
$CopilotUsageDetails = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/beta/reports/getMicrosoft365CopilotUsageUserDetail(period='D180')"

# Create an array to store the usage data
$UsageData = @()

#get Date and Time and format as sting
$DateTime = Get-Date
$formattteddatetime = $DateTime.ToString("yyyyMMdd_HHmmss")

#get mydocuments path
$mydocumentsPath = [System.Environment]::GetFolderPath('MyDocuments')

#increase memory allocation for function
$maximumfunctioncount = 32768

# Loop through each user and extract the usage details
foreach ($User in $CopilotUsageDetails.value) {
    $UsageData += [PSCustomObject]@{
        reportRefreshDate = $User.reportRefreshDate
        UserPrincipalName = $User.UserPrincipalName
        DisplayName = $User.DisplayName
        LastActivityDate = $User.LastActivityDate
        copilotChatLastActivityDate = $User.copilotChatLastActivityDate
        microsoftTeamsCopilotLastActivityDate = $user.microsoftTeamsCopilotLastActivityDate
        wordCopilotLastActivityDate = $user.wordCopilotLastActivityDate
        excelCopilotLastActivityDate = $user.excelCopilotLastActivityDate
        powerPointCopilotLastActivityDate = $user.powerPointCopilotLastActivityDate
        outlookCopilotLastActivityDate = $user.outlookCopilotLastActivityDate
        oneNoteCopilotLastActivityDate = $user.oneNoteCopilotLastActivityDate
        loopCopilotLastActivityDate = $user.loopCopilotLastActivityDate   
    }
}

Write-Host ("{0} usage data records processed" -f $UsageData.count)

# Export the usage data to a CSV file
$UsageData | Export-Csv -Path $mydocumentsPath"\"$formattteddatetime"cpusrdetails.csv" -NoTypeInformation

Write-Host "Copilot user usage details have been exported to"$mydocumentsPath"\"$formattteddatetime"cpusrdetails.csv"