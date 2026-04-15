@echo off
del *.wlf
rmdir /s /q work
vlog -work work   -sv -stats=none ../rtl/defines/*.sv
if %ERRORLEVEL% GEQ 1 pause /B 1
vlog -work work   -sv -stats=none ../testbench/*.sv
if %ERRORLEVEL% GEQ 1 pause /B 1
vlog -work work   -sv -stats=none ../rtl/transmitter/*.sv 
if %ERRORLEVEL% GEQ 1 pause /B 1 
vlog -work work   -sv -stats=none ../rtl/receiver/*.sv 
if %ERRORLEVEL% GEQ 1 pause /B 1 
vlog -work work   -sv -stats=none ../rtl/*.sv 
if %ERRORLEVEL% GEQ 1 pause /B 1