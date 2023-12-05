# The code below is used to generate the HelloWorld.txt file at containter build time

# Get the current date and time
$currentDateTime = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Set the file path where you want to create the text file
$filePath = "./HelloWorld.txt"

# Create content to write into the file
$content = "Hello World!  I was created: $currentDateTime
This files is an example of how the Post Create Command property of the devcontainer.json file can be used to instanciate a PowerShell script at 
Codespace Container build time. 
In this example the HelloWorld.txt file was created by the startup.ps1 file (a PowerShell script) which is located in the .devcontainer directory.
PowerShell scripts have an almost limitless number of applications. In Dotnet, for example, they can be use to create build and run C# porgrams. 
This PowerShell scripted was in turn executed by the devcontainer.json files 'postCreateCommand' property. 
To stop this process, delete the startup.ps1 file or, better yet, remove the line starting `,'postCreateCommand':...` from the devcontainer.json file 
ensuring to also remove the preceeding commer."

# Write the content to a text file
$content | Out-File -FilePath $filePath

