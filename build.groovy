def buildProject(){
    bat "dotnet restore weather-app.sln"
    bat "dotnet clean weather-app.sln"
    bat "dotnet build weather-app.sln --configuration Release"
}

return this
