def packageProject(){
    bat "dotnet publish WeatherApi\\WeatherApi.csproj --configuration Release"
}

return this
