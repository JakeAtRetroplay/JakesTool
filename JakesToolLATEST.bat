@echo off


//CHANGE THIS EVERY UPDATE!
set datemodified=5-31-23 6:09 PM CDT




title Jake's Tool
setlocal EnableDelayedExpansion
cls
cd C:\JakesTool
color 0a
set filehost=https://files.ungarun.ga
echo filehost: %filehost%
echo updated %datemodified%
echo press any key to continue
pause > nul
:menu
cls
color 1a
echo Welcome to Jake's Miscallenous Tool
echo 1. Free Spotify Premium
echo 2. Roblox Menu
echo 3. Exit


set /p choice=Enter choice (e.g, "1"):

if "%choice%"=="1" goto spotify
if "%choice%"=="2" goto robloxmenu
if "%choice%"=="3" exit

cls
echo Please choose a valid option.
echo Current directory: %cd%
timeout 3 > nul
goto menu


////////////////////////////////////////////////////////////////// Free Spotify Prem


:spotify
cls
echo Are you sure you want to patch Spotify?
set /p choice=Do you want to continue (Y/N)?
if /I "%choice%"=="Y" goto spotifyyes
if /I "%choice%"=="N" goto spotifyno


:spotifyyes
cls
curl %filehost%/files/spotify/spotx.bat --output spotx.bat
cls
start /wait "" spotx.bat

echo Done
echo Press any key to go back to the main menu.
pause > nul
del /f spotx.bat
goto menu

:spotifyno
goto menu




////////////////////////////////////////////////////////////////// Roblox Menu


:robloxmenu
cls
color 4f
echo Welcome to Jake's Roblox Utilities
echo 1. Old Oof Sound
echo 2. Old Cursor
echo 3. Install Roblox FPS Unlocker
echo 4. Download/Update Roblox
echo 5. Roblox Executor Downloads
echo 6. Delete Roblox
echo 7. Main Menu
set /p choice=Enter choice (e.g, "1"):

if "%choice%"=="1" goto oofsound
if "%choice%"=="2" goto cursor
if "%choice%"=="3" goto rbxfpsunlocker
if "%choice%"=="4" goto dlroblox
if "%choice%"=="5" goto rbxhacksmenu
if "%choice%"=="6" goto delroblox
if "%choice%"=="7" goto menu

cls
echo Please choose a valid option.
timeout 3 > nul
goto robloxmenu



////////////////////////////////////////////////////////////////// Roblox Executor Downloads


:rbxhacksmenu
cd C:\Program Files
cls
echo Roblox has released a new anti-cheat system that prevents lots of executors from working. There is 0 guarantee that these will work.
timeout 3 /nobreak > nul
echo Please choose the executor you want to download.
echo 1. Synapse X Executor (paid)
echo 2. Delta Executor
echo 3. KRNL Executor
echo 4. JJSploit (why?)
echo 5. Return to the Roblox Menu
set /p haxchoice=Enter choice (e.g. "1"):


if "%haxchoice%"=="1" goto synapsex
if "%haxchoice%"=="2" goto delta
if "%haxchoice%"=="3" goto krnl
if "%haxchoice%"=="4" goto jjsploit
if "%haxchoice%"=="5" goto robloxmenu
 
cls
echo Please choose a valid option.
timeout 3 > nul
goto rbxhacksmenu


////////////////////////////////////////////////////////////////// Synapse X Download


:synapsex
cls
echo Are you sure you want to install Synapse X? (Y/N)
set /p choice=Do you want to continue (Y/N)?
if /I "%choice%"=="Y" goto synapseyes
if /I "%choice%"=="N" goto synapseno
cls
echo Please choose a valid option.
timeout 3 > nul
goto synapsex

:synapseyes
echo Creating Synapse directory in Program Files
mkdir Synapse
cd %ProgramFiles%\Synapse\
echo Downloading Synapse...
curl https://cdn1.synapsecdn.to/rel/synapse-v2-launcher-12-5-22.zip -o synapse.zip

cls
set "zipfile=%ProgramFiles%\Synapse\synapse.zip"
set "destination=%ProgramFiles%\Synapse\"

cls
echo Extracting %zipfile%...
powershell -command "Expand-Archive -Path '%zipfile%' -DestinationPath '%destination%' -Force"
cls
echo Moving the "Synapse Launcher.exe" file to 'Program Files\Synapse'
move "%zipfile%\Synapse Launcher.exe" "%destination%"
cls
echo Cleaning up...
del synapse.zip
del README.txt
echo Opening Synapse...
"%ProgramFiles%\Synapse\Synapse Launcher.exe"

cls
set "shortcut=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Synapse X.lnk"
set "target=%ProgramFiles%\Synapse\Synapse Launcher.exe"

echo Creating shortcut for Synapse Launcher...
powershell -command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%shortcut%'); $Shortcut.TargetPath = '%target%'; $Shortcut.Save()"

cls
echo Adding exclusion for %folder% to Windows Defender...
powershell -command "Add-MpPreference -ExclusionPath '%ProgramFiles%\Synapse\'"
echo Exclusion added.
cls
echo Synapse has been installed, excluded from Windows Defender, and launched.
echo Press any key to go back to the executor menu.
pause > nul
goto rbxhacksmenu


:synapseno
goto rbxhacksmenu




////////////////////////////////////////////////////////////////// Delta Installer

:delta
cls
echo Are you sure you want to install Delta Executor? (Y/N)
set /p choice=Do you want to continue (Y/N)?
if /I "%choice%"=="Y" goto deltayes
if /I "%choice%"=="N" goto deltano
cls
echo Please choose a valid option.
timeout 3 > nul
goto delta

:deltayes
echo Creating Delta directory in Program Files

cd %ProgramFiles%\
echo Adding exclusion for Delta to Windows Defender...
powershell -command "Add-MpPreference -ExclusionPath '%ProgramFiles%\DeltaInstaller.exe'"
powershell -command "Add-MpPreference -ExclusionPath '%ProgramFiles%\Delta\'"
echo Exclusion added.
timeout 1 > nul

cls
echo Exclusion added.
echo Downloading Delta...
curl %filehost%/files/roblox/hax/DeltaInstaller.exe -o DeltaInstaller.exe



cls
echo Opening Delta Installer...
start "" "%ProgramFiles%\DeltaInstaller.exe"

echo Creating Delta Shortcut...
set "shortcut=%ProgramData%\Microsoft\Windows\Start Menu\Programs\Delta.lnk"
set "target=%ProgramFiles%\Delta\Delta.exe"
powershell -command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%shortcut%'); $Shortcut.TargetPath = '%target%'; $Shortcut.Save()"


cls
color 4f
echo Delta has been installed, excluded from Windows Defender, and launched.
echo Press any key to go back to the executor menu.
pause > nul
goto rbxhacksmenu


:deltano
goto rbxhacksmenu


////////////////////////////////////////////////////////////////// KRNL Installer


:krnl
cls
echo Are you sure you want to install KRNL? (Y/N)
set /p choice=Do you want to continue (Y/N)?
if /I "%choice%"=="Y" goto krnlyes
if /I "%choice%"=="N" goto krnlno
cls
echo Please choose a valid option.
timeout 3 > nul
goto krnl

:krnlyes
echo Creating KRNL directory in Program Files
cd %ProgramFiles%\
mkdir KRNL


cd %ProgramFiles%\KRNL
echo Adding exclusion for KRNL to Windows Defender...
powershell -command "Add-MpPreference -ExclusionPath '%ProgramFiles%\KRNL\'"
echo Exclusion added.


cls
echo Adding exclusion for KRNL to Windows Defender...
powershell -command "Add-MpPreference -ExclusionPath '%ProgramFiles%\KRNL\'"
echo Exclusion added.
echo Downloading KRNL...
cd %ProgramFiles%\KRNL\
curl https://k-storage.com/krnl_beta.exe -o KRNL.exe



cls
echo Opening KRNL...
start "" "%ProgramFiles%\KRNL\KRNL.exe"

echo Creating KRNL Shortcut...
set "shortcut=%ProgramData%\Microsoft\Windows\Start Menu\Programs\KRNL.lnk"
set "target=%ProgramFiles%\KRNL\KRNL.exe"
powershell -command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%shortcut%'); $Shortcut.TargetPath = '%target%'; $Shortcut.Save()"


cls
color 4f
echo KRNL has been installed, excluded from Windows Defender, and launched.
echo Press any key to go back to the executor menu.
pause > nul
goto rbxhacksmenu


:krnlno
goto rbxhacksmenu

////////////////////////////////////////////////////////////////// JJShit Installer

:jjsploit
cls
echo Are you really sure you want to install JJSploit? (Y/N)
set /p choice=Do you want to continue (Y/N)?
if /I "%choice%"=="Y" goto jjyes
if /I "%choice%"=="N" goto jjno
cls
echo Please choose a valid option.
timeout 3 > nul
goto krnl

:jjyes
echo Creating JJSploit directory in Program Files
cd %ProgramFiles%\
mkdir JJSploit


cd %ProgramFiles%\JJSploit
echo Adding exclusion for JJSploit to Windows Defender...
powershell -command "Add-MpPreference -ExclusionPath '%ProgramFiles%\JJSploit\'"
echo Exclusion added.


cls
echo Adding exclusion for JJSploit to Windows Defender...
powershell -command "Add-MpPreference -ExclusionPath '%ProgramFiles%\JJSploit\'"
echo Exclusion added.
echo Downloading JJSploit...
cd %ProgramFiles%\JJSploit\
curl https://cdnwrd2.com/r/2/jjsploit/7.1.3/JJSploit_7.1.3_x86_en-US.msi -o jjsploit.msi
timeout 1 /nobreak >nul


cls
echo Opening JJSploit installer... Please set this as your install directory: %ProgramFiles%\JJSploit\
 echo DO NOT select 'Launch JJSploit' after installation.
start "" "%ProgramFiles%\JJSploit\jjsploit.msi"
echo.
echo After installation, press any key to continue.
pause > nul

 move /Y "C:\Program Files (x86)\JJSploit\*.*" "%ProgramFiles%\JJSploit\"

 
echo Creating JJSploit Shortcut...
set "shortcut=%ProgramData%\Microsoft\Windows\Start Menu\Programs\JJSploit.lnk"
set "target=%ProgramFiles%\JJSploit\JJSploit.exe"
powershell -command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%shortcut%'); $Shortcut.TargetPath = '%target%'; $Shortcut.Save()"

del /f "%ProgramFiles%\JJSploit\jjsploit.msi"
cls
color 4f
echo JJSploit has been installed, excluded from Windows Defender, and launched.
echo Press any key to go back to the executor menu.
pause > nul
goto rbxhacksmenu


:krnlno
goto rbxhacksmenu


////////////////////////////////////////////////////////////////// Oof Patch


:oofsound
cls
echo You have chosen to replace the current oof sound with the old one.

echo Finding Roblox version...

for /f "tokens=* delims=" %%a in ('where /r C:\Users%username%\AppData\Local\Roblox\Versions "RobloxPlayerBeta.exe"') do (
set robloxExecutable=%%a
set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
echo RobloxVersion: !robloxVersion!
echo RobloxFile: !robloxExecutable!
)

if not defined robloxExecutable (
for /f "tokens=* delims=" %%a in ('where /r "C:\Program Files (x86)\Roblox" "RobloxPlayerBeta.exe"') do (
set robloxExecutable=%%a
set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
echo RobloxVersion: !robloxVersion!
echo RobloxFile: !robloxExecutable!
)
)

if not defined robloxExecutable (
for /f "tokens=* delims=" %%a in ('where /r "%ProgramFiles%\Roblox" "RobloxPlayerBeta.exe"') do (
set robloxExecutable=%%a
set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
echo RobloxVersion: !robloxVersion!
echo RobloxFile: !robloxExecutable!
)
)

if not defined robloxExecutable (
echo Roblox not found. Please make sure you have installed and ran Roblox or specify the correct file path.
goto robloxpause
)

echo.
cls
echo Version Found: !robloxVersion!

echo Finding oof sound..
echo.
for /f "delims=" %%a in ('dir "!robloxVersion!" /s /b ^| findstr /i /c:"ouch.ogg"') do (
set "OofSound=%%a"
goto :done
)
:done
if not defined OofSound (
echo Oof sound not found.
echo Downloading and applying Oof sound..
del /f "!robloxVersion!\content\sounds\ouch.ogg"
curl %filehost%/files/roblox/oof/ouch.ogg -o ouch.ogg
xcopy /y "ouch.ogg" "!robloxVersion!\content\sounds"
echo.
cls
echo Oof sound replaced successfully.


goto robloxpause
)
(
echo Oof sound found.
echo Replacing Oof sound..
del /f "!robloxVersion!\content\sounds\ouch.ogg"
curl %filehost%/files/ouch.ogg -o ouch.ogg
xcopy /y "ouch.ogg" "!robloxVersion!\content\sounds"
echo.
cls
echo Oof sound replaced successfully.
)
echo Press any key to go back to the Roblox menu.
pause > nul
del /f "%cd%\ouch.ogg"
goto robloxmenu







////////////////////////////////////////////////////////////////// Old Cursor



:cursor
cls
echo You have chosen to replace the current cursor with the old one.

echo Finding Roblox version...

for /f "tokens=* delims=" %%a in ('where /r C:\Users%username%\AppData\Local\Roblox\Versions "RobloxPlayerBeta.exe"') do (
set robloxExecutable=%%a
set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
echo RobloxVersion: !robloxVersion!
echo RobloxFile: !robloxExecutable!
)

if not defined robloxExecutable (
for /f "tokens=* delims=" %%a in ('where /r "C:\Program Files (x86)\Roblox" "RobloxPlayerBeta.exe"') do (
set robloxExecutable=%%a
set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
echo RobloxVersion: !robloxVersion!
echo RobloxFile: !robloxExecutable!
)
)

if not defined robloxExecutable (
for /f "tokens=* delims=" %%a in ('where /r "%ProgramFiles%\Roblox" "RobloxPlayerBeta.exe"') do (
set robloxExecutable=%%a
set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
echo RobloxVersion: !robloxVersion!
echo RobloxFile: !robloxExecutable!
)
)

if not defined robloxExecutable (
echo Roblox not found. Please make sure you have installed and ran Roblox or specify the correct file path.
goto robloxpause
)

echo.
cls
echo Version Found: !robloxVersion!

echo Finding cursors folder..
echo.
for /f "delims=" %%a in ('dir "!robloxVersion!" /s /b ^| findstr /i /c:"Cursors"') do (
set "CursorsFolder=%%a"
goto :done
)
:done
echo Cursors found: %CursorsFolder%\KeyboardMouse
echo Replacing cursors..
del /f "%CursorsFolder%\KeyboardMouse\ArrowCursor.png"
del /f "%CursorsFolder%\KeyboardMouse\ArrowFarCursor.png"
curl %filehost%/files/roblox/cursors/ArrowCursor.png -o ArrowCursor.png
xcopy /y "ArrowCursor.png" "%CursorsFolder%\KeyboardMouse"
curl %filehost%/files/roblox/cursors/ArrowFarCursor.png -o ArrowFarCursor.png
xcopy /y "ArrowFarCursor.png" "%CursorsFolder%\KeyboardMouse"
echo.
cls
echo Cursors replaced successfully.
echo Press any key to go back to the Roblox menu.
pause > nul
del /f "%cd%\ArrowFarCursor.png"
del /f "%cd%\ArrowCursor.png"
goto robloxmenu


////////////////////////////////////////////////////////////////// rbxfpsunlocker


:rbxfpsunlocker
cd C:\JakesTool
cls
echo You have chosen to install the Roblox FPS unlocker.
echo Downloading FPS unlocker...
curl %filehost%/files/roblox/fpsunlocker/rbxfpsunlocker.exe -o rbxfpsunlocker.exe
cls
echo Starting FPS unlocker.
Start "" rbxfpsunlocker.exe
echo Done.
echo Would you like to move the FPS unlocker to your startup folder?
set /p fpsyesno=Enter choice ("yes", "no"):

if "%fpsyesno%"=="yes" goto startupFPSYes
if "%fpsyesno%"=="no" goto startupFPSNo


:startupFPSNo
cls
echo Okay.
echo Your Roblox FPS Unlocker executable file is on your desktop.
del settings
echo.
echo Press any key to go back to the Roblox menu.
pause > nul
goto robloxmenu

:startupFPSYes
cls
echo Moving FPS unlocker to Startup folder.
move "rbxfpsunlocker.exe" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\" > nul

echo Done.
move "settings" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\" > nul
echo Press any key to go back to the Roblox menu.
pause > nul
goto robloxmenu







:dlroblox
echo Finding Roblox version...

for /f "tokens=* delims=" %%a in ('where /r C:\Users%username%\AppData\Local\Roblox\Versions "RobloxPlayerBeta.exe"') do (
    set robloxExecutable=%%a
    set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
    echo RobloxVersion: !robloxVersion!
    echo RobloxFile: !robloxExecutable!
)

if not defined robloxExecutable (
    for /f "tokens=* delims=" %%a in ('where /r "C:\Program Files (x86)\Roblox" "RobloxPlayerBeta.exe"') do (
        set robloxExecutable=%%a
        set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
        echo RobloxVersion: !robloxVersion!
        echo RobloxFile: !robloxExecutable!
    )
)

if not defined robloxExecutable (
    for /f "tokens=* delims=" %%a in ('where /r "%ProgramFiles%\Roblox" "RobloxPlayerBeta.exe"') do (
        set robloxExecutable=%%a
        set robloxVersion=!robloxExecutable:\RobloxPlayerBeta.exe=!
        echo RobloxVersion: !robloxVersion!
        echo RobloxFile: !robloxExecutable!
    )
)

if not defined robloxExecutable (
    echo Skipping Roblox deletion...
    goto robloxcontinue
)

echo.
cls
echo Version Found: !robloxVersion!
echo Deleting current version..
del !robloxVersion!
cls
echo Downloading Roblox..
curl -o C:\Users\%username%\Downloads\RobloxPlayerLauncher.exe https://setup.rbxcdn.com/version-be30b823d3fc46a0-Roblox.exe

cls
echo Starting Roblox Installer...
"C:\Users\%username%\Downloads\RobloxPlayerLauncher.exe"
echo Starting Roblox...
"C:\Users\%username%\Desktop\Roblox Player.lnk"
cls
echo Deleting any unnecessary remaining files...
del /f /q "C:\Users\%username%\Downloads\RobloxPlayerLauncher.exe"
cls
echo Done.
echo Press any key to go back to the Roblox menu.
pause > nul

goto robloxmenu

:robloxcontinue
echo Roblox not found, continuing download script
echo Downloading Roblox..
curl -o C:\Users\%username%\Downloads\RobloxPlayerLauncher.exe https://setup.rbxcdn.com/version-be30b823d3fc46a0-Roblox.exe

cls
echo Starting Roblox Installer...
"C:\Users\%username%\Downloads\RobloxPlayerLauncher.exe"
echo Starting Roblox...
"C:\Users\%username%\Desktop\Roblox Player.lnk"
cls
echo Deleting any unnecessary remaining files...
del /f /q "C:\Users\%username%\Downloads\RobloxPlayerLauncher.exe"
cls
echo Done.
echo Press any key to go back to the Roblox menu.
pause > nul

goto robloxmenu


////////////////////////////////////////////////////////////////// Roblox Delete
:delroblox
cls
echo Are you sure you want to delete roblox? (yes/no)
set /p delchoice=Enter choice (e.g, "yes", "no"):

if "%delchoice%"=="no" goto deleteno
if "%delchoice%"=="yes" goto deleteyes

:deleteyes
cls
echo Finding Roblox
echo Roblox Folder: C:\Users\%username%\AppData\Local\Roblox
echo Deleting..
for /f "delims=" %%i in ('dir /b /s "C:\Users\%username%\AppData\Local\Roblox"') do (
    echo Deleting "%%i"
    del /q "%%i"
)
rmdir /s /q "C:\Users\%username%\AppData\Local\Roblox"
echo Roblox has been deleted. Press any key to go back to the Roblox menu.

pause > nul
goto robloxmenu

:deleteno
echo Cancelling.
goto robloxmenu


////////////////////////////////////////////////////////////////// Pause

:robloxpause
pause
goto robloxmenu





