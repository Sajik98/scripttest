@echo off
title FlexNet Options Generator
color 0A

echo ========================================
echo  FlexNet Options File Generator
echo ========================================
echo.

REM Automatically change to the batch file's directory
cd /d "%~dp0"

REM Run Python script
python newf8.py

echo.
if errorlevel 1 (
    color 0C
    echo ERROR: Generation failed!
) else (
    color 0A
    echo SUCCESS: File generated in this folder!
)
echo.
pause