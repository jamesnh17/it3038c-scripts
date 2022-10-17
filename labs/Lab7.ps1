
# Installation script for Chocolatey!! This package manager is much like yum, npm, etc.

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object 
    System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

# Subsequent installations useful for our class.
 
choco install python3;
choco install notepadplusplus.install;
choco install zoom;
choco install nodejs.install;

# Oops, we don't use zoom, better get rid of it.

choco uninstall zoom;

# What if we fail at scripting and would rather use a GUI? Never fear, Choco GUI is here.

choco install chocolateygui;

# Need to upgrade your favorite scripting environment, heres how.

choco upgrade python3;

# Like to upgrade all packages at once? Here's a solution to save your mousepad.

choco upgrade all;

# Need more reasons to try out Choclatey? Check it out at: https://docs.chocolatey.org/en-us/why