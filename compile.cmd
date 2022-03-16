pushd src\main\resources
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
py compile.py dataOld 0
mkdir dataNew
robocopy data dataNew * /mir
del data\*.mcfunction /f /s /q
echo off
for /f "tokens=*" %%a in ('dir /s /b data\*.bat') do (
	ren "%%a" "%%~nxa.old"
)
for /f "tokens=*" %%a in ('dir /s /b data\*.cmd') do (
	ren "%%a" "%%~nxa.old"
)
py compile.py dataNew 1
xcopy dataold\list* data /e /c /y
popd