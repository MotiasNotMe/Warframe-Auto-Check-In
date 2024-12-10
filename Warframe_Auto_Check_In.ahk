;;; Warframe Auto Check In. Автовход и получение наград за ежедневный вход. Создано Motias.
	
; --- Переменные и директивы
#Requires AutoHotkey 1.1
#NoEnv   
SetWorkingDir %A_ScriptDir%  
#SingleInstance
CoordMode, Pixel, Window

Run, run.bat, %A_ScriptDir%  ; - Запуск игры.

Loop  ; - Ожидание окна лаунчера
{
	WinWait, Warframe, , 3
}
Until ErrorLevel = 0
If (ErrorLevel = 0)
{
	WinActivate, Warframe ahk_class Launcher  ; - Активация окна лаунчера.

	Loop  ; - Поиск кнопки играть.
	{
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 Data/play.png  
		Sleep, 1000
	}
	Until ErrorLevel = 0
	If (ErrorLevel = 0)
	{
		Click, %FoundX%, %FoundY%
		Sleep, 100
        
		WinActivate, Warframe ahk_class WarframePublicEvolutionGfxD3D11  ; - Активация окна игры.
		Sleep, 1000 
        
;		Loop  ; - Поиск кнопки отмена.
;		{
;			ImageSearch, FoundX1, FoundY1, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 Data/cancel.png  
;			Sleep, 200
;		}
;		Until ErrorLevel = 0
;		If (ErrorLevel = 0)
;		{
;			Click, %FoundX1%, %FoundY1%    
		         
			Loop
			{
				ImageSearch, FoundX4, FoundY4, 0, 0, A_ScreenWidth, A_ScreenHeight, *90 Data/rewards.png  ; - Поиск наград.
				Sleep, 200
			}
			Until ErrorLevel = 0
			If (ErrorLevel = 0)
			{   
  				CoordMode Mouse
				Click, % Ceil(A_ScreenWidth * 0.74) "," Ceil(A_ScreenHeight * 0.73)                  
				Sleep, 5000                        
				Send !{F4}  ; Выйти из игры
			}
;		}
	}
}
