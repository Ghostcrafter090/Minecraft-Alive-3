set version=%~1
if "$%version%"=="$--skip-compile" (
	set version=%~2
	goto skcomp
)
call compile

:skcomp
py fixtoml.py %version%
call gradlew build
copy .\build\reobfJar\output.jar minecraft_alive_forge_1.18.1_%version%.jar