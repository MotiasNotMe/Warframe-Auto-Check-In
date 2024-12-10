# Warframe rewards autocollection script for English version of the game.

## Requirements:
Windows, [AutoHotKey 1.1](https://www.autohotkey.com/), Steam, Warframe EN 2024.11.13.

## Installation:
- Install AutoHotKey __1.1__.
- Download and unzip Warframe-Auto-Check-In.zip
- Run Warframe_Auto_Check_In.ahk and add to autorun if required.

### Note:
- If you're playing using a different OS, replace the line “Run the game”. For example: `Run, run.bat, %A_ScriptDir%` to `Run, Launcher.exe, D:/\Warframe\Tools`.
- If you find a translation error or want to improve the script or something is not working, create an issues.
- If you use a language other than Russian or English, make the necessary screenshots of the buttons and replace them in the Data folder.
- If you want to speed up the script, limit the search field for all ImageSearch. For example: `ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 Data/play.png` to `ImageSearch, FoundX, FoundY, 614, 552, 909, 640, *10 Data/play.png`.

## NO Steam version:
- Install AutoHotKey 1.1.
- Download and unzip Warframe-Auto-Check-In.zip
- Edit Warframe_Auto_Check_In_NO_STEAM.ahk with notepad.
- Replace the value of the Password variable with your password, for example: `Password = % “MyStrongPassword123”` to `Password = % “MySuperMegaStrongPassword1235”`.
- Run Warframe_Auto_Check_In_NO_STEAM.ahk and add to autorun if required.

### Note:
- Important: Your password is stored in a text file. It's unsafe.
- If you a Steam account is not associated with Warframe and you click “no” every time, delete the semicolons `;` starting from the line “Search for cancel button.” and also at the bottom of the script next to the bracket `{`.

> WARNING: The author assumes no responsibility whatsoever. Use this at your own risk.

