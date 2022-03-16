del wind\* /f /s /q
set wind=5
set windspeed=2
set windold=1
:loop
if %wind% geq 300 (
	set /a windspeed = %windspeed% + 1
	set wind=5
	set windold=1
)
if %windspeed% geq 11 (
	goto end
)
echo execute as @a[scores={wind=%windold%..%wind%}] if entity @s[scores={windspeed=%windspeed%..%windspeed%}] at @s run particle minecraft:cloud ~80 ~ ~ 1 10 10 %windspeed% %wind% force >> wind\wind%windspeed%.mcfunction
set windold=%wind%
set /a wind=%wind% + 5
goto loop

:end