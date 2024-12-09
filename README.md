# Warframe rewards autocollection script for English version of the game.

## Requirements:
Windows, [AutoHotKey](https://www.autohotkey.com/), Steam, Warframe EN 2024.11.13.

## Installation:
- Install AutoHotKey.
- Download and unzip Warframe-Auto-Check-In.zip
- Edit Warframe_Auto_Check_In.ahk with notepad.
- Replace the value of the Password variable with your password, for example: `Password = % “MyStrongPassword123”` to `Password = % “MySuperMegaStrongPassword1235”`.
- Run Warframe_Auto_Check_In.ahk and add to autorun if required.

## Note:
-If your resolution is different from 1920x1080. Replace the values of the reward collection variables. For example: `ScreenWidthX2 := 1920 * 0.73` and `ScreenHeightY2 := 1080 * 0.74` to `ScreenWidthX2 := 3840 * 0.73 and ScreenHeightY2 := 2160 * 0.74`.
- If you don't have a Steam account linked to Warframe and you get a notification when you log in: “Your Steam account is not linked to Warframe” and you click “no” every time, delete the semicolons `;` starting from the line “Search for cancel button.” and also at the bottom of the script next to the bracket `{`.
- If you're playing without Steam or using a different OS, replace the line “Run the game”. For example: `Run, run.bat, %A_ScriptDir%` to `Run, Launcher.exe, D:/\Warframe\Tools`.
- If you find a translation error or want to improve the script or something is not working, create an issues.
- If you use a language other than Russian or English, make the necessary screenshots of the buttons and replace them in the Data folder.
- If you want to speed up the script, limit the search field for all ImageSearch. For example: `ImageSearch, FoundX1, FoundY1, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 Data/cancel.png` to `ImageSearch, FoundX1, FoundY1, 344, 437, 1577, 643, *60 Data/cancel.png`.

> WARNING: Your password is stored in a text file. The author is not responsible for password leaks or any actions by DE.

