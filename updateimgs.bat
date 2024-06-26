@echo off

cd "C:\Users\user\Documents\Testcode\testblog\Imgs"

rem Set the current date and time
for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value') do set datetime=%%i
set msg=rebuilding site %datetime%
if "%*" neq "" (
    set msg=%*
)

git add --all
git commit -m "%msg%"
git push -u origin main