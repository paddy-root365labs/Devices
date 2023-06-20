Note: Test this in your test tenant before running this in production tenant.

Four files:
1)	Delete_IntuneDevice-SerialNumberList.ps1 and Delete_IntuneDevice-DeviceNameList.ps1
    a.	This is the file that contains actual PowerShell script
2)	DeviceNameList.txt and serailNumber.txt
  a.	You enter the device names or serial numbers which will be used by the script to delete.

Steps:
1)	Save all 4 files into one folder
2)	If you have device names, then edit DeviceNameList.txt and add device names. If you have serial numbers edit serailNumber.txt and add serial numbers to it. 

Connect to Graph API: (run below steps if this is your first time connecting with GraphAPI)
1)	Open PowerShell with admin rights
2)	Run following commands one by one
      * Set-executionpolicy unrestricted
      * install-module AzureAD
      * install-module -name microsoft.graph.intune
      * Connect-MsGraph -adminConsent
      *	Sign into your tenant with global admin rights

Run deletion script:
1)	On the PowerShell window, change to the folder you saved PowerShell scripts
2)	Run one of the 2 scripts you want to run depending on whether you want to delete based on device names or serial number.
3)	Wait for 5 minutes
4)	Refresh the portal. Verify the devices are removed from Intune portal.

