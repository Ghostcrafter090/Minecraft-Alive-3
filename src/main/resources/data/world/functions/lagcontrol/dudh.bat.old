for /f "tokens=*" %%a in ('type st.txt') do (
	for /f "tokens=*" %%b in ('findstr /c:"%%a" "testf.txt"') do (
		echo %%b %%a 20 >> step4.txt
	)
)