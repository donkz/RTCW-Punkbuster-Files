@echo Must run as Administrator

@echo Are the service running?

sc query PnkBstrA
sc query PnkBstrB

@echo Are the files in windows directory?

dir C:\Windows\SysWOW64\PnkBstr*
pause