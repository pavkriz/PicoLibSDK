@echo off
rem Compilation...

set TARGET=flash_cache
set GRPDIR=Orig_UART
set MEMMAP=

if "%1"=="" goto default
if "%1"=="pico2" goto stop
if "%1"=="pico2riscv" goto stop

..\..\..\_c1.bat %1

:default
..\..\..\_c1.bat pico

:stop
