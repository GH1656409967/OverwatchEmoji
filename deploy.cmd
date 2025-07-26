
CALL git config --global core.autocrlf false
CALL git config --global -l
CALL git init
CALL git add .
REM for /f "delims=" %%A in ('wmic os get localdatetime ^ find "."') do set datetime=%%A
for /f "tokens=2 delims==+" %%A in ('wmic os get localdatetime /value') do set datetime=%%A
echo %datetime%
CALL git commit -m "%datetime%"
CALL git checkout -b main
CALL git remote add origin git@github.com:GH1656409967/OverwatchEmoji.git
CALL git push -f --set-upstream origin main
REM pause


