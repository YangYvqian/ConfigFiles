@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
@echo off

@echo 140.82.112.3 github.com>>C:\WINDOWS\system32\drivers\etc\hosts

@ipconfig /flushdns
@echo on
@pause