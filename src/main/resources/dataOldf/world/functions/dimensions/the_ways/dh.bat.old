echo. >> dfnhhf.mc
echo 0 > num.cx
for /f "tokens=*" %%a in ('type waygatemacro.mcfunction') do (
	for /f "tokens=*" %%b in ('type num.cx') do (
		for /f "tokens=*" %%c in ('powershell -command %%b + 1') do (
			echo execute if entity @s[scores={waygatemake=%%c..%%c}] run %%a >> dfnhhf.mc
			echo %%c > num.cx
		)
	)
			
)