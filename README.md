# Elite-Dangerous-Launcher-
A modified shortcut and script that simutaneously lauches the Elite: Dangerous Laucnher, EDMC and the EDx52display plugin (optional). Also closes the apps once the ED Launcher is close 

# Installation

1. Download and install EDMC as usual, noting the .exe path
2. Download and install EDx52display, which can be found [here](https://github.com/peterbn/EDx52display), noting the exe path
3. Copy the .bat and shortcut files to the EDLaunch folder
4. Edit the .bat file with the correct installation paths
5. Edit the shortcut file's target arguments (right click > properties) with the correct ED installation path. It should read `C:\Windows\System32\cmd.exe /c "[ED Installation path]ED_launcher.bat"`
4. Create a shortcut to the shortcut file in the folder/pin to start bar
5. To disable the EDx52Display plugin edit the .bat file and comment/delete the lines specified

