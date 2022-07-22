@echo off

set Loader=%~dp2DATA\LOADER\XIAOMI\prog_emmc_firehose_Sdm660_ddr_xiaomi_note5_whyred_s_rb4.elf
set MemoryName=emmc

call %~dp2DATA\RESOURCES\page.cmd

echo.
echo.Selected Model           : XIAOMI MI NOTE 5
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