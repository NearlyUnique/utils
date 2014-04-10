@echo off
call "%ProgramFiles(x86)%\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x86
prompt $N:$G
title VS Prompt
@rem running as Admin can cause home drives not to be mapped so do that now and ignore errors
net use %HOMEDRIVE% %HOMESHARE% 2> nul

@rem map powershell like commands
@rem conemu doe not seem to need these
@rem doskey pwd=cd
@rem doskey ls=dir
cd