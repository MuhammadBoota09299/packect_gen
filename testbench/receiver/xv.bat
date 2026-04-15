@echo off
del *.wlf
rmdir /s /q work

vlog -work work -sv -stats=none ../../rtl/defines/*.sv
if %ERRORLEVEL% GEQ 1 pause & exit /B 1

vlog -work work -sv -stats=none ../../rtl/receiver/*.sv
if %ERRORLEVEL% GEQ 1 pause & exit /B 1

vlog -work work -sv -stats=none ../../testbench/receiver/*.sv
if %ERRORLEVEL% GEQ 1 pause & exit /B 1