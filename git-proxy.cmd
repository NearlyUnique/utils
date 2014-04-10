@echo off
if "%1"=="on" (
	git config --global http.proxy http://peg-proxy01:80
	echo proxy is ### ON ###
	goto END
)
if "%1"=="off" (
	git config --global --unset-all http.proxy
	echo proxy is ### OFF ###
	goto END
)
echo enter git-proxy on^|off
:END