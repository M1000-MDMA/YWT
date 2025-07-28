@echo off
::YWT v0.5
::Licensed under GPL‑3.0 
:: Enable UTF-8 for better character support
chcp 65001 >nul

:: Check for admin permissions
whoami /groups | find "S-1-5-32-544" >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges.
    echo Requesting administrative privileges...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs" >nul 2>&1
    exit /b
)

set EXITCODE=0
:: If the script has admin rights, continue execution
title Yungz's MENU of Tweakz 0.1 TEST
:menu
cls

set "MAGENTA=[35m"
set "LIGHT_PURPLE=[95m"
set "GREEN=[32m"
set "YELLOW=[33m"
set "BLUE=[34m"
set "CYAN=[36m"
set "WHITE=[37m"
set "RED=[31m"
set "RESET=[0m"
set "BROWN=[33m" 
:: Colours of text

echo ==========================================

echo.
echo %RED%  ██╗   ██╗██╗   ██╗███╗   ██╗ ██████╗ ███████╗███████╗%RESET% %BLUE%██╗    ██╗██╗███╗   ██╗%RESET%
echo %RED%  ╚██╗ ██╔╝██║   ██║████╗  ██║██╔════╝ ╚══███╔╝██╔════╝%RESET% %BLUE%██║    ██║██║████╗  ██║%RESET%
echo %RED%   ╚████╔╝ ██║   ██║██╔██╗ ██║██║  ███╗  ███╔╝ ███████╗%RESET% %BLUE%██║ █╗ ██║██║██╔██╗ ██║%RESET%
echo %RED%    ╚██╔╝  ██║   ██║██║╚██╗██║██║   ██║ ███╔╝  ╚════██║%RESET% %BLUE%██║███╗██║██║██║╚██╗██║%RESET%
echo %RED%     ██║   ╚██████╔╝██║ ╚████║╚██████╔╝███████╗███████║%RESET% %BLUE%╚███╔███╔╝██║██║ ╚████║%RESET%
echo %RED%     ╚═╝    ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚══════╝%RESET% %BLUE% ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝%RESET%
echo.
echo.
echo %BROWN%████████╗ ██████╗  ██████╗ ██╗     ██████╗  ██████╗ ██╗  ██╗%RESET%
echo %BROWN%╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔══██╗██╔═══██╗╚██╗██╔╝%RESET%
echo %BROWN%   ██║   ██║   ██║██║   ██║██║     ██████╔╝██║   ██║ ╚███╔╝ %RESET%
echo %BROWN%   ██║   ██║   ██║██║   ██║██║     ██╔══██╗██║   ██║ ██╔██╗ %RESET%
echo %BROWN%   ██║   ╚██████╔╝╚██████╔╝███████╗██████╔╝╚██████╔╝██╔╝ ██╗%RESET%
echo %BROWN%   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝%RESET%
echo ==========================================
echo.
echo %RED% READ BEFORE USING!!!!!!!!! %RESET%
echo %LIGHT_PURPLE%I have just made a hub for all of them that I used and liked,%RED%USE AT YOUR OWN RISK, THESE SCRIPTS CHANGE SYSTEM SETTINGS! %RESET%
echo %MAGENTA% READ CREDITS FOR EVERYTHING YOU NEED TO KNOW AND FOR THE CREATORS OF THE SCRIPTS %RESET%
echo.
echo ==========================================
echo %GREEN%[1] WINDOWS ACTIVATION (MAS) %RESET%
echo %BLUE%[2] Windows Toolbox ( ChrisTitusTech )  %RESET%
echo %LIGHT_PURPLE%[3] Credits %RESET%
echo %RED%[X] Exit %RESET%
echo ==========================================
choice /c 123X /n /m %CYAN%"Select an option > "%RESET%
set choice=%ERRORLEVEL%
:: Windows Activation
if %choice%==1 goto :choice1
:: Windows Toolbox   
if %choice%==2 goto :choice2
:: Credits
if %choice%==3 goto :choice3
:: Exit
if %choice%==4 goto :eof

:: handle user input
:choice1
    powershell -Command "irm https://get.activated.win | iex" >nul 2>&1
    goto menu


:choice2
    powershell -Command irm "https://christitus.com/win | iex" >nul 2>&1
    goto menu




:choice3
    cls
    echo.
echo  %RED%      ▄████▄   ██▀███  ▓█████ ▓█████▄  ██▓▄▄▄█████▓  ██████  %RESET%
echo  %RED%     ▒██▀ ▀█  ▓██ ▒ ██▒▓█   ▀ ▒██▀ ██▌▓██▒▓  ██▒ ▓▒▒██    ▒  %RESET%
echo  %RED%     ▒▓█    ▄ ▓██ ░▄█ ▒▒███   ░██   █▌▒██▒▒ ▓██░ ▒░░ ▓██▄    %RESET%
echo  %RED%     ▒▓▓▄ ▄██▒▒██▀▀█▄  ▒▓█  ▄ ░▓█▄   ▌░██░░ ▓██▓ ░   ▒   ██▒ %RESET%
echo  %RED%     ▒ ▓███▀ ░░██▓ ▒██▒░▒████▒░▒████▓ ░██░  ▒██▒ ░ ▒██████▒▒ %RESET%
echo  %RED%     ░ ░▒ ▒  ░░ ▒▓ ░▒▓░░░ ▒░ ░ ▒▒▓  ▒ ░▓    ▒ ░░   ▒ ▒▓▒ ▒ ░ %RESET%
echo  %RED%       ░  ▒     ░▒ ░ ▒░ ░ ░  ░ ░ ▒  ▒  ▒ ░    ░    ░ ░▒  ░ ░ %RESET%
echo  %RED%     ░          ░░   ░    ░    ░ ░  ░  ▒ ░  ░      ░  ░  ░   %RESET%
echo  %RED%     ░ ░         ░        ░  ░   ░     ░                 ░   %RESET%
echo  %RED%     ░                         ░                             %RESET%
echo  %RED%     ░ ░         ░        ░  ░   ░     ░                 ░   %RESET%
echo.
echo.
echo First of all, i'd like to say that majority of the scripts and programs are %RED%NOT%RESET% made by me and therefore %RED%DO NOT %RESET% claim any ownership.
echo I have just made a hub for all of them that I used and liked.
echo I have tested all of them and they work fine, but I am not responsible for any damage that may occur to your system.
echo If you have any issues with the scripts or programs, please contact the respective developers as i have NO authority over said  programs.
echo Would like to extend a big thanks to all the developers 
echo %BROWN% SELECT THE DEVELOPER NAME TO OPEN THEIR social/info %RESET%
echo ==========================================
echo %BLUE%[1] Massgravel(MAS) %RESET%
echo %RED%[2] ChrisTitusTech(Win- Assistant) %RESET%
echo %MAGENTA%[3] YUNGZ (Windows Toolbox) %RESET%
echo %GREEN%[X] Main Menu %RESET%
echo ==========================================
choice /c 123X /n /m %CYAN%"Select an option > "%RESET%
set choice=%ERRORLEVEL%
if %choice%==1 goto :winact
if %choice%==2 goto :winutil
if %choice%==3 goto :yng
if %choice%==4 goto :menu
:winact
echo  ╦ ╦┬┌┐┌┌┬┐┌─┐┬ ┬┌─┐  ╔═╗┌─┐┌┬┐┬┬  ┬┌─┐┌┬┐┬┌─┐┌┐┌
echo  ║║║││││ │││ ││││└─┐  ╠═╣│   │ │└┐┌┘├─┤ │ ││ ││││ ( MASSGRAVE )
echo  ╚╩╝┴┘└┘─┴┘└─┘└┴┘└─┘  ╩ ╩└─┘ ┴ ┴ └┘ ┴ ┴ ┴ ┴└─┘┘└┘
echo Webiste : https://massgrave.dev/
echo Discord : https://discord.com/invite/j2yFsV5ZVC
echo Twitter : https://twitter.com/massgravel
echo GitHub  : https://github.com/massgravel/Microsoft-Activation-Scripts 
echo.
echo Type the number to open a link:
echo [1] Website
echo [2] Discord
echo [3] Twitter
echo [4] GitHub
echo [0] Return to menu
set /p linkchoice=Choice: 
if "%linkchoice%"=="1" start https://massgrave.dev/
if "%linkchoice%"=="2" start https://discord.com/invite/j2yFsV5ZVC
if "%linkchoice%"=="3" start https://twitter.com/massgravel
if "%linkchoice%"=="4" start https://github.com/massgravel/Microsoft-Activation-Scripts
if "%linkchoice%"=="0" goto menu

:winutil
echo ╦ ╦ ╦ ╔╗╔ ╦ ╦╔╦╗╦ ╦  
echo ║║║ ║ ║║║ ║ ║ ║ ║ ║     ( CHRIS TITUS TECH )
echo ╚╩╝ ╩ ╝╚╝ ╚═╝ ╩ ╩ ╩═╝
echo Website: https://christitus.com/
echo Github : https://github.com/ChrisTitusTech/winutil
echo Youtube: https://www.youtube.com/@christitustech
:yng
cls

echo %MAGENTA% #     # #     #  #####  %RESET%
echo  %MAGENTA% #   #  ##    # #     #%RESET%
echo  %MAGENTA%  # #   # #   # #      %RESET%
echo  %MAGENTA%   #    #  #  # #  ####%RESET%
echo  %MAGENTA%   #    #   # # #     #%RESET%
echo  %MAGENTA%   #    #    ## #     #%RESET%
echo  %MAGENTA%   #    #     #  ##### %RESET%
echo If you have any suggestions or feedback, feel free to reach out to me.
echo I would love to hear from you. discord.gg/bHmYbwsWMc ( my server )
echo Thank you for using my script and have a great day!
echo I am a beginner dev, dont hate on me (┬┬_┬┬)
echo If you want to support me, consider my Patreon : patreon.com/YungzsDomain

:choice4
(
goto :eof
)




























































:eof
:: Exit the script
exit /b %EXITCODE%
