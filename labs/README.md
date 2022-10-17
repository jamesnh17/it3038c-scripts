# Here is an installation script for Chocolatey!! This package manager is much like yum, npm, pip, etc. but meant for powershell/a windows environment. 
# You can always go to the chocolatey.org website and download the installer, or run the script below in your version of powershell. 

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object 
    System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

# Like other package managers chocolatey makes it easy to install, uninstall, or to update/upgrade applications straight 
# from the command line. A few of our useful class installations are listed below.
 
choco install python3;
choco install notepadplusplus.install;
choco install zoom;
choco install nodejs.install;

# For any old (or no longer needed) applications such as zoom zoom, run the uninstall command.

choco uninstall zoom;

# What if we fail at scripting and would rather use a GUI? Never fear, Choco GUI is here.

choco install chocolateygui;

# Need to upgrade your favorite scripting environment, heres how.

choco upgrade python3;

# Like to upgrade all packages at once? Here's a solution to save your mousepad.

choco upgrade all;

# Need more reasons to try out Choclatey? Check it out at: https://docs.chocolatey.org/en-us/why