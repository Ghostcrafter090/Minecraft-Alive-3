robocopy dataOld data * /mir
del data\*.mcfunction /f /s /q
echo off
for /f "tokens=*" %%a in ('dir /s /b data\*.bat') do (
	ren "%%a" "%%~nxa.old"
)
for /f "tokens=*" %%a in ('dir /s /b data\*.cmd') do (
	ren "%%a" "%%~nxa.old"
)
rem for /f "tokens=*" %%a in ('dir /s /b dataOld\*.mcfunction') do (py main.py "%%a")
py compile.py