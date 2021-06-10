@echo off
cls
echo Name of File:
set /p file=
<%file%.srcpl (
set /p str1=
set /p str2=
set /p str3=
)
goto str1
:str1
if %str1%== Run goto printstr2
if %str1%== Softlock goto loopstr2
if %str1%== Frame goto str2setvar
if %str1%== DamegeBoost goto str2varminus
if %str1%== Mash goto str2plusstr3
if %str1%== OoB goto printvarstr1
if %str1%== RagePause pause goto str2
if %str1%== RNG goto str1varrandom
if %str1%== PB goto varplusstr2
if %str1%== WR goto varplusstr2str3
goto str2
:str2
if %str2%== Run goto printstr3
if %str2%== Softlock goto loopstr3
if %str2%== Frame goto str3setvar
if %str2%== DamegeBoost goto str3varminus
if %str2%== Mash goto str1plusstr3
if %str2%== OoB goto printvarstr2
if %str2%== RagePause pause goto str3
if %str2%== RNG goto str2varrandom
if %str2%== PB goto varplusstr3
if %str2%== WR goto varplusstr1str3
goto str3
:str3
if %str3%== DamegeBoost goto str3varminus
if %str3%== Mash goto str1plusstr2
if %str3%== OoB goto printvarstr3
if %str3%== RagePause pause exit
if %str3%== RNG goto str3varrandom
if %str3%== WR goto varplusstr1str2
:printstr2
echo %str2%
goto str3
:printstr3
echo %str3%
pause exit
:loopstr2
goto loopstr2
:loopstr3
goto loopstr3
:str2setvar
set var=%str2%
goto str3
:str3setvar
set var=%str3%
pause exit
:str2varminus
set /a var=%var%-%str2%
echo %var%
pause
goto str3
:str3varminus
set  /a var=%var%-%str3%
echo %var%
pause exit
:str2plusstr3
set /a var=%str2%+%str3%
echo %var%
pause exit
:str1plusstr3
set /a var=%str1%+%str3%
echo %var%
pause exit
:str1plusstr2
set /a var=%str1%+%str2%
echo %var%
pause exit
:printvarstr1
echo %var%
goto str2
:printvarstr2
echo %var%
goto str3
:printvarstr3
echo %var%
pause exit
:str1varrandom
set var=%RANDOM%
goto str2
:str2varrandom
set var=%RANDOM%
goto str3
:str3varrandom
set var=%RANDOM%
echo %var%
pause exit
:varplusstr2
set /a var=%var%+%str2%
goto str3
:varplusstr3
set /a var=%var%+%str3%
echo %var%
pause exit
:varplusstr2str3
set /a var=%var%+%str2%+%str3%
echo %var%
pause exit
:varplusstr1str3
set /a var=%var%+%str1%+%str3%
echo %var%
pause exit
:varplusstr1str2
set /a var=%var%+%str1%+%str2%
echo %var%
pause exit