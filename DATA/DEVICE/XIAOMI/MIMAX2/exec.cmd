@echo off

set Loader=%~dp2DATA\LOADER\XIAOMI\prog_ufs_firehose_8998_ddr_xiaomi_mimax2_chiron_rb1.elf
set MemoryName=ufs

call %~dp2DATA\RESOURCES\page.cmd

echo.
echo.Selected Model           : XIAOMI MI MAX 2
echo.Operation                : Factory Reset Remove FRP and Unlock MiCloud
call %~dp2DATA\RESOURCES\loading.cmd

call %~dp2DATA\CONFIG\USBPortCOM.cmd
IF (%USBComPort%) == () (GOTO :err_process) ELSE (GOTO :process)

:err_process
echo.
%cecho% {04}Error - QCUSB Port EDL Not Detected! {0f}
echo.
echo.
pause
call %~dp2DATA\DEVICE\XIAOMI\menu.cmd

:process
echo.
%cecho% {0a}Connecting To Device...{0f} [OK]
echo.
%cecho% {0b}Configuring Firehose...{0f} [OK]
call %~dp2DATA\RESOURCES\process-xiaomi.cmd %Loader% %MemoryName%
call %~dp2DATA\DEVICE\XIAOMI\menu.cmd