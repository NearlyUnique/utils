@echo off
SET HERE=%~dp0
SET TAG=%HERE%#%1.cmd

if "%1" == "del" (
	if NOT EXIST "%HERE%#%2.cmd" (
		echo No such mark to delete '%2'
		goto END
	)
	echo deleting '%2'
	del %HERE%#%2.cmd
	goto LIST
)

if "%1" == "list" (
	:LIST
	echo Available Tags
	echo:
	pushd c:\utils

	SET TEMP_TAG=#tags-temp.txt
	dir #*.cmd /b > %TEMP_TAG%

	for /F "tokens=*" %%a in ("%TEMP_TAG%") do (
		for /F "delims=." %%b in (%%a) do (
			echo    %%b
		)
	)
	del %TEMP_TAG%

	popd
	goto END
)

if EXIST "%TAG%" (
	echo Tag '%1' already exists
	goto END
)
echo @pushd %CD% > %TAG%

:END