# AutoAppInstaller

This is a PowerShell script that I made using the Windows CLI tool call "[winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/)"

This is required for this script to install [App Installer](ms-windows-store://pdp/?ProductId=9NBLGGH4NNS1&mode=mini)

## How to use the AutoInstaller batch script

The script talks to other batch files and uses the "call" function quite a lot, so when using it it's either recommended to keep the USB that it's installed on or copy and place these files to somewhere on the computer.

To use this script right click on the file "AutoAppInstaller.bat" and run it as admin (this is to avoid constantly having to approve administration prompts)

When you first run the script, it will give you the prompt

    where I am located (Case Sensitive)

Next what you are to do is then copy the file directory, for example

    C:\Users\%USERNAME%\Desktop\AutoAppInstaller

Once you enter the file directory, it will then ask

    Please type the name of the app list you would like to use (It is case sensitive)

The names of the app list can be found inside of (these are also batch files, so please do read them before running them)

    AutoAppInstaller\AppLists

Once you you tell it which app to use, it will then start trying to download these apps, either from Microsoft repository (again, please correct me if I'm wrong, but from what I can assume you publish your own packages to a repository that Microsoft has) or the Microsoft Windows Store

Once it completes installing all the apps in the list, it will then ask

    Do you want to update these Apps?

Once to ask this question, it will then run a command to check what apps need updating on the computer that are available from Microsoft repo, it cannot check from the Microsoft store.

It will then ask you again do you want to update these apps with a new prompt

    Do you want to update these Apps? (Yes = Y) (No = N)

If you tell it, yes, it will then try to update all the apps that can it may fail and if that's the case, you can still update the app manually by opening it and doing the usual to update that app.

After all apps are completed updating, it will then pause so that you can check back through and see what has updated and what has failed. If you hit any key, it will then close the prompt.

## The "Compiler"

I use this to make the script into an exe using this tool [Create-EXEFromPS1](https://github.com/nickrod518/Create-EXEFromPS1)

I have also made a script for making this easier for my self and others to use [makeAAIexe.ps1](https://github.com/lachydavies25/helpful-scripts/blob/main/makeAAIexe.ps1)
