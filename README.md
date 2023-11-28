# Codespace setup for developing dotnet core apps

## (codspace-debian-bookworm-10-dotnet)

### Author: Ed Fraser - A basic codspace based on debian for developing C# dotnet projects. PowerShell and other essential extentions have also been included

### Codespace base image info

This Codespace configurations is based on the following repository description

<https://hub.docker.com/_/microsoft-dotnet-aspnet/>

Please find below the link to the original dockerfile configuration file

<https://github.com/dotnet/dotnet-docker/blob/0f9bcba898466d5c00ac0fa57fdc2d40a9f29491/src/sdk/8.0/bookworm-slim/amd64/Dockerfile>

### This base image includes

#### NET CLI

#### .NET runtime

#### ASP.NET Core 

### Apps installed by the Dockerfile by default include

#### curl

#### git

#### wget

#### Powershell

### Apps I've added to the base Dockerfile to install include

#### nano 

#### vim 

### Command suggestions to check versions of apps installed

Use ` cat /etc/os-release ` to see the version of Debian running 

Use ` git --version ` to see the version of git installed 

Use ` nano --version ` to see the version of nano installed 

### Extentions added to auto install in vscode include: 

#### `ms-azuretools.vscode-docker` - Provides, for example, Dockerfile intellisense.

#### `ms-dotnettools.csdevkit`

#### `ms-vscode.PowerShell`
