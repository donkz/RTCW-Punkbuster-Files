@echo Must run as Administrator

@echo Stopping punkbuster services

net stop PnkBstrA
net stop PnkBstrB
del C:\Windows\SysWOW64\PnkBstrA.exe 
del C:\Windows\SysWOW64\PnkBstrB.exe
SC DELETE PnkBstrA
SC DELETE PnkBstrB
pause
