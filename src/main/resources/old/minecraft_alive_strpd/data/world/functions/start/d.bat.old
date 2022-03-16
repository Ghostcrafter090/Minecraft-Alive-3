set derp=84
echo. > d.txt
:loop
set /a derp = %derp% + 3
if not %derp% equ 128 (
	echo execute if entity @e[name=dmain,scores={starttime=2..2}] run summon villager -75 240 %derp% >> d.txt
	echo execute if entity @e[name=dmain,scores={starttime=2..2}] run summon villager -83 240 %derp% >> d.txt
	
)
if %derp% geq 144 goto end
goto loop

:end
