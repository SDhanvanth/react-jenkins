@echo off
REM Check if index.html exists
if not exist "index.html" (
    echo ERROR: index.html not found in the current folder.
    pause
    exit /b
)

REM Ensure the destination folder exists
if not exist "userContent" (
    mkdir "userContent"
)

REM Copy index.html to the destination folder
copy /Y "index.html" "userContent\index.html"

echo index.html has been successfully copied to userContent folder.
pause