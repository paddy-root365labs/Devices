$data = get-content -path .\DeviceNameList.txt
foreach ($deviceName in $data)
{
    $deviceID = (Get-IntuneManagedDevice -filter "deviceName eq '$deviceName'").id
    Remove-DeviceManagement_ManagedDevices -managedDeviceId $deviceid
}
