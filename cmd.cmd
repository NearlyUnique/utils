@echo off
call "%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x86
prompt $N:$S
title VS Prompt
@rem running as Admin can cause home drives not to be mapped so do that now and ignore errors
net use %HOMEDRIVE% %HOMESHARE% 2> nul

@rem map powershell like commands
doskey pwd=cd
doskey ls=dir
cd