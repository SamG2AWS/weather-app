Import-Module WebAdministration

$iisAppPoolName = "WeatherApi-AppPool"
$iisAppName = "WeatherApi"
$directoryPath = "D:\\Jenkins\\WeatherApi"


#navigate to the app pools root
cd IIS:\AppPools\

#check if the app pool exists
if (!(Test-Path $iisAppPoolName -pathType container))
{
    #create the app pool
    $appPool = New-Item $iisAppPoolName
}

#navigate to the sites root
cd IIS:\Sites\

#check if the site exists
if (Test-Path $iisAppName -pathType container)
{
    return
}

#create the site
$iisApp = New-Item $iisAppName -bindings @{protocol="http";bindingInformation=":9991:" + $iisAppName} -physicalPath $directoryPath
$iisApp | Set-ItemProperty -Name "applicationPool" -Value $iisAppPoolName
