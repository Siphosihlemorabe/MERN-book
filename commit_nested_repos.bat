@echo off
setlocal

set BASE_DIR=%CD%
set FOLDERS=14 15 16 17 18 19 20 21 22 23 24

for %%i in (%FOLDERS%) do (
    echo Committing changes in chapter%%i/frontend
    cd "%BASE_DIR%\chapter%%i\frontend"
    git add .
    git commit -m "Commit changes in chapter%%i/frontend"
)

cd %BASE_DIR%
echo All nested repositories have been committed.
pause
