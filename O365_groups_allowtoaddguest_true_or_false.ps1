# Connect to Exchange Online in Office365 
#Connect-EXOPSSession -UserPrincipalName miska.tarvainen@sofor.fi

# Connect to AzureAD
#Connect-AzureAD

#Set all Groups/Teams to 'AllowToAddGuests' == $False

#$groupID = Get-UnifiedGroup -ResultSize Unlimited | Select-Object -ExpandProperty ExternalDirectoryObjectId
#Foreach ($Groups in $GroupID) {
#$template = Get-AzureADDirectorySettingTemplate | ? {$_.displayname -eq "group.unified.guest"}
#$settingsCopy = $template.CreateDirectorySetting()
#$settingsCopy["AllowToAddGuests"]=$False
#New-AzureADObjectSetting -TargetType Groups -TargetObjectId $groups -DirectorySetting $settingsCopy
#} 

#Set specific Group back to $True or $False

#$GroupID = get-unifiedgroup -Identity recion-support@sofor.fi | Select-Object -ExpandProperty ExternalDirectoryObjectId
#$SettingID = Get-AzureADObjectSetting -TargetType Groups -TargetObjectID $GroupID | select-object -expandproperty ID
#remove-azureadobjectsetting -id $settingid -targettype Groups -TargetObjectID $GroupID
#$template = Get-AzureADDirectorySettingTemplate | ? {$_.displayname -eq "group.unified.guest"}
#$settingsCopy = $template.CreateDirectorySetting()
#$settingsCopy["AllowToAddGuests"]=$True
#New-AzureADObjectSetting -TargetType Groups -TargetObjectId $groupID -DirectorySetting $settingsCopy

# List
#Get-UnifiedGroup | Where-Object {$_.AllowAddGuests -eq $True} | ft PrimarySMTPAddress,  AllowAddGuests, DisplayName
#Get-UnifiedGroup | Where-Object {$_.AllowAddGuests -eq $False} | ft PrimarySMTPAddress,  AllowAddGuests, DisplayName


#Disconnect the session
#Get-PSSession | Remove-PSSession
