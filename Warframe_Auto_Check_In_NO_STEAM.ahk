;;; Warframe Daily Check In. Auto login and auto claim rewards. Created by Motias. Translated by Deepl.
	
; --- Variables and directives
#Requires AutoHotkey 1.1
#NoEnv  
SetWorkingDir %A_ScriptDir%  
#SingleInstance
CoordMode, Pixel, Window

Password = % "MyStrongPassword123"  ; - Password. Example: Password = % "MySuperMegaStrongPassword1235"

Run, Launcher.exe, D:\Warframe\Tools  ; - Game launch.

Loop  ; - Waiting for the launcher window.
{
    WinWait, Warframe, , 3
}
Until ErrorLevel = 0
If (ErrorLevel = 0)
{
    WinActivate, Warframe ahk_class Launcher  ; - Launcher window activation.

    Loop  ; - Searching for the play button.
    {
    	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 Data/play.png  
    	Sleep, 1000
    }
    Until ErrorLevel = 0
    If (ErrorLevel = 0)
    {
        Click, %FoundX%, %FoundY%
        Sleep, 100
        
        WinActivate, Warframe ahk_class WarframePublicEvolutionGfxD3D11  ; - Waiting for the game to launch.
        Sleep, 1000 
       
	Loop ; - Search for an input field.
	{
		ImageSearch, FoundX2, FoundY2, 0, 0, A_ScreenWidth, A_ScreenHeight, *70 Data/password.png  
		Sleep, 200
	}
	Until ErrorLevel = 0
	If (ErrorLevel = 0)
	{
		Click, %FoundX2%, %FoundY2%
        	Sleep, 200
        	SendRaw %Password%  ; - Entering a password.
        	Sleep, 200
                 
		Loop ; - Searching for login button.
	{
		ImageSearch, FoundX3, FoundY3, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 Data/login.png  
		Sleep, 200
	}
	Until ErrorLevel = 0
	If (ErrorLevel = 0)
	{
		Click, %FoundX3%, %FoundY3%
                              
		Loop ; - Award Search.
		{
			ImageSearch, FoundX4, FoundY4, 0, 0, A_ScreenWidth, A_ScreenHeight, *90 Data/rewards.png  
			Sleep, 200
                }
                Until ErrorLevel = 0
                If (ErrorLevel = 0)
                {   
                	CoordMode Mouse
                        Click, % Ceil(A_ScreenWidth * 0.74) "," Ceil(A_ScreenHeight * 0.73)                     
                        Sleep, 5000                        
                        Send !{F4}  ; - Quit
                }
        }
        }
    }
}
