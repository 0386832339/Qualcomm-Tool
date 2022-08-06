@echo off

IF "%Devices%" == "REALME" (


::: Partition Devinfo
    for /f "delims= " %%c in ('type %cache%\partition^|find "devinfo"') do (
      set "line=%%c"
      set "line=!line:*devinfo =!
      set /a "result_devinfo=!line:~1!" 2>nul
    )
        IF "%result_devinfo%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "devinfo" %cache%\partition') do (echo.Partition Devinfo sector   : %%d
            type %xml_devinfo_path%\REALME-unlock-bl-patch.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%d$2" xi >%cache%\patch.xml)
            %sleep% 1
            %emmcdl% -p %USBComPort% -f %Loader% -d devinfo %backup_devinfo% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up Devinfo...   {0f}[OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul
            %cecho% {0a}Unlocking Boot Loader...{0f}     [OK]
            echo.
            ) ELSE (
                %cecho% {04}Error %MemoryName% damaged! {0f}
                echo.
            )

)

IF "%Devices%" == "OPPO" (


::: Partition Devinfo
    for /f "delims= " %%c in ('type %cache%\partition^|find "devinfo"') do (
      set "line=%%c"
      set "line=!line:*devinfo =!
      set /a "result_devinfo=!line:~1!" 2>nul
    )
        IF "%result_devinfo%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "devinfo" %cache%\partition') do (echo.Partition Devinfo sector   : %%d
            type %xml_devinfo_path%\OPPO-unlock-bl-patch.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%d$2" xi >%cache%\patch.xml)
            %sleep% 1
            %emmcdl% -p %USBComPort% -f %Loader% -d devinfo %backup_devinfo% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up Devinfo...   {0f}[OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul
            %cecho% {0a}Unlocking Boot Loader...{0f}     [OK]
            echo.
            ) ELSE (
                %cecho% {04}Error %MemoryName% damaged! {0f}
                echo.
            )

)


IF "%Devices%" == "VIVO" (


::: Partition Devinfo
    for /f "delims= " %%c in ('type %cache%\partition^|find "devinfo"') do (
      set "line=%%c"
      set "line=!line:*devinfo =!
      set /a "result_devinfo=!line:~1!" 2>nul
    )
        IF "%result_devinfo%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "devinfo" %cache%\partition') do (echo.Partition Devinfo sector   : %%d
            type %xml_devinfo_path%\VIVO-unlock-bl-patch.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%d$2" xi >%cache%\patch.xml)
            %sleep% 1
            %emmcdl% -p %USBComPort% -f %Loader% -d devinfo %backup_devinfo% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up Devinfo...   {0f}[OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul
            %cecho% {0a}Unlocking Boot Loader...{0f}     [OK]
            echo.
            ) ELSE (
                %cecho% {04}Error %MemoryName% damaged! {0f}
                echo.
            )

)


IF "%Devices%" == "XIAOMI" (


::: Partition Devinfo
    for /f "delims= " %%c in ('type %cache%\partition^|find "devinfo"') do (
      set "line=%%c"
      set "line=!line:*devinfo =!
      set /a "result_devinfo=!line:~1!" 2>nul
    )
        IF "%result_devinfo%" == "1" (for /F "Tokens=7 " %%d in ('findstr /I "devinfo" %cache%\partition') do (echo.Partition Devinfo sector   : %%d
            type %xml_devinfo_path%\XIAOMI-unlock-bl-patch.xml | %repl% "(start_sector=\q).*?(\q.*>)" "$1%%d$2" xi >%cache%\patch.xml)
            %sleep% 1
            %emmcdl% -p %USBComPort% -f %Loader% -d devinfo %backup_devinfo% -memoryname %MemoryName% >nul
            %cecho% {0a}Backing-up Devinfo...   {0f}[OK]
            echo.
            %emmcdl% -p %USBComPort% -f %Loader% -x %cache%\patch.xml -memoryname %MemoryName% >nul
            %cecho% {0a}Unlocking Boot Loader...{0f}     [OK]
            echo.
            ) ELSE (
                %cecho% {04}Error %MemoryName% damaged! {0f}
                echo.
            )

)
