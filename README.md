# Codespace setup for developing dotnet core apps
## Intro

The perpose of this repo is to make it easy to instanciate your own Codespace provisioned with the basic tools to build and delploy a basic dotnet applications.

A PowerShell script is used to create a "Hello World" txt file.

## (codspace-debian-bookworm-101-dotnet)

### Aproxomate build time: 65 secs

### Author: Ed Fraser - Ed Minding My Own Business

### Repo image info

#### The objective of this Repo

This repo has been designed for Codespace generation for dotet development. 

It is based on a light version of Linux Debian. PowerShell and other essential extentions have also been included.

#### Creating a Codespace on this repo - HelloWorld.txt

When a new Codespace is build on this repo a HelloWorld.txt is created in the working directory. This file is an example of how the Post Create Command 
property of the devcontainer.json file can be used to execute a PowerShell script at Codespace Container build time.

In this example the HelloWorld.txt file was created by the startup.ps1 file (a PowerShell script) which is located in the .devcontainer directory.
PowerShell scripts have an almost limitless number of applications. In Dotnet, for example, they can be use to create, build and run C# porgrams. 

This PowerShell scripted was in turn executed by the devcontainer.json files 'postCreateCommand' property. To stop this process, delete the startup.ps1 
file or, better yet, remove the line starting `,'postCreateCommand':...` from the devcontainer.json file ensuring to also remove the preceeding commer.

## Specs

This Codespace configurations is based on the following repository description

<https://hub.docker.com/_/microsoft-dotnet-aspnet/>

Please find below the link to the original dockerfile configuration file

<https://github.com/dotnet/dotnet-docker/blob/0f9bcba898466d5c00ac0fa57fdc2d40a9f29491/src/sdk/8.0/bookworm-slim/amd64/Dockerfile>

### This base image includes

##### NET CLI

##### .NET runtime

##### ASP.NET Core 

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

#### `ms-azuretools.vscode-docker` - Provides things like Dockerfile intellisense.

#### `ms-dotnettools.csdevkit` - Is an extension pack for a number of other extensions

#### `ms-vscode.PowerShell` - Provides things like PowerShell intellisense.

#### `GitHub.vscode-github-actions` - Provides things like GitHub Actions intellisense.

### Settings added to auto install in vscode include: 

#### `terminal.integrated.defaultProfile.linux: pwsh` - Sets the default CLI to PowerShell
<br>

## .NET CLI overview

The .NET CLI provide a set of commands for dotnet including 'dotnet build' for more informaitons see

https://learn.microsoft.com/en-us/dotnet/core/tools/

