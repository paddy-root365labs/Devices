$data = get-content -path .\serialNumber.txt
foreach ($serialNumber in $data)
{
    $deviceID = (Get-IntuneManagedDevice -filter "serialNumber eq '$serialNumber'").id
    Remove-DeviceManagement_ManagedDevices -managedDeviceId $deviceid
}
