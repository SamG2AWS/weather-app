def deployProject(){
    powershell 'Copy-Item -Path "WeatherApi\\bin\\Release\\net5.0\\publish\\*" -Destination "D:\\Jenkins\\WeatherApi" -Recurse -Force'
    powershell returnStatus: true, script: '.\\AssignPermissions.ps1'
    powershell returnStatus: true, script: '.\\IISDeployment.ps1'

}

return this
