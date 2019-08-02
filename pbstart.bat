@echo Must run as Administrator

@echo Starting punkbuster services

copy PnkBstrA.exe C:\Windows\SysWOW64
copy PnkBstrB.exe C:\Windows\SysWOW64
sc create PnkBstrA binPath= "C:\Windows\SysWOW64\PnkBstrA.exe"
sc create PnkBstrB binPath= "C:\Windows\SysWOW64\PnkBstrB.exe"
net start PnkBstrA
net start PnkBstrB
pause