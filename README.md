# Скрипт автосбора наград Warframe для русской версии игры.
## Требования:
Windows, [AutoHotKey 1.1](https://www.autohotkey.com/), Steam, Warframe RU 2024.11.13.

## Установка:
- Установите AutoHotkey __1.1__.
- Скачайте и распакуйте Warframe-Auto-Check-In.zip
- Отредактируйте с помощью блокнота Warframe_Auto_Check_In.ahk
- Запустите Warframe_Auto_Check_In.ahk и добавьте в автозапуск, если требуется.

### Примечание:
- Если вы используете язык отличный от русского или анлийского сделайте необходимые скриншоты кнопок и замените их в папке Data.
- Если вы хотите ускорить работу скрипта, ограничьте поле поиска для всех ImageSearch. Например заменив: `ImageSearch, FoundX1, FoundY1, 0, 0, A_ScreenWidth, A_ScreenHeight, *60 Data/cancel.png` на `ImageSearch, FoundX1, FoundY1, 344, 437, 1577, 643, *60 Data/cancel.png`

## Версия без Стим:
- Установите AutoHotkey __1.1__.
- Скачайте и распакуйте Warframe-Auto-Check-In.zip
- Отредактируйте с помощью блокнота Warframe_Auto_Check_In_NO_STEAM.ahk
- Замените значение переменной Password "Пароль" на ваш пароль, например: `Password = % "MyStrongPassword123"` на `Password = % "MySuperMegaStrongPassword1235"`.
- Замените значение в строчке "Запуск игры". Например: `Run, Launcher.exe, D:\Warframe\Tools` to `Run, Launcher.exe, D:\Mygames\Warframe\Tools`.
- Запустите Warframe_Auto_Check_In_NO_STEAM.ahk и добавьте в автозапуск, если требуется.
- 
### Примечание:
- Важно: Ваш пароль хранится в текстовом файле. Это небезопасно.
  
> ПРЕДУПРЕЖДЕНИЕ: Ваш пароль хранится в текстовом файле. Автор не несёт ответственности за утечку пароля, а так же за любые действия со стороны DE.
