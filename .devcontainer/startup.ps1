New-Item -Path ./HelloWorld.txt -Value "Hello World!  
This files is an example of how the Post Create Command property of the devcontainer.json file can be used to instanciate a PowerShell script. 
In this example the HelloWorld.txt file was created by the startup.ps1 file (a PowerShell script) which is located in the .devcontainer directory.
PowerShell scripts have an almost limitless number of applications. In Dotnet, for example, they can be use to create build and run C# porgrams. 
This PowerShell scripted was in turn executed by the devcontainer.json files 'postCreateCommand' property. 
To stop this process, delete the startup.ps1 file or, better yet, remove the line starting `,'postCreateCommand':...` from the devcontainer.json file 
ensuring to also remove the preceeding commer.
"   -ItemType File -Force
