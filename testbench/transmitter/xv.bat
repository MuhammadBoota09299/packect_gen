@echo off

del /q *.wlf 2>nul
rmdir /s /q work

vlib work

vlog -work work -sv -stats=none ../../rtl/defines/*.sv
if %ERRORLEVEL% GEQ 1 pause & exit /b 1

vlog -work work -sv -stats=none ../../testbench/transmitter/*.sv
if %ERRORLEVEL% GEQ 1 pause & exit /b 1

vlog -work work -sv -stats=none ../../rtl/transmitter/*.sv
if %ERRORLEVEL% GEQ 1 pause & exit /b 1