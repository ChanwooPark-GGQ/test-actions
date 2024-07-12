@echo off
set TIMESTAMP=%date/_%_%time::=_%
set RESULTS_FILE=results_%TIMESTAMP%.log


date /t > %RESULTS_FILE%

move %RESULTS_FILE% ../../