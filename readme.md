# Purpose
This repository contains files required to run punkbuster for RTCW as well as supplement windows .bat scripts to start or stop RTCW PunkBuster services. 

## Intro
PunkBuster is a software to introduce anti-cheat controls for RTCW. It was active in 2000s , but it is no longer supported. It does not come by default with the game and needs to be acquired separately. In 2019 it's best to get PunkBuster files here because it is possible to download something too new and non-functional off the internet that will send you down a wrong, falsely working path.
PunkBuster consists of two elements: files in RTCW/pb game folder and windows services that always run on your PC.

1. PB is the PunkBuster folder with antihacking data that is static for everyone. 
2. Punkbuster services are two .exe files that reside in C:\Windows\SysWOW64 folder that are added to windows OS as services to be always running. 
The challenge here is that downloading/installing these files from the internet is challenging as new versions do not support RTCW. 


RTCW folder structure looks like this

/your game folder
  * Main
  * mod1
  * mod2
  * pb  - provided in this repository
  * wolf_mp.exe

## This repository provides:
1. The correct exe files PnkBstrB.exe and PnkBstrA.exe
2. pb folder you can drop into your RTCW folder.
3. pbstart.bat - Script that starts PunkBuster services by 
    * copying them to C:\Windows\SysWOW64
    * adding them to registry as the windows services
    * starting the services 
4. pbcheck.bat - Script that checks if PB services are running
5. pbstop.bat - Script that stops PunkBuster services. You typically should not care if it's your personal PC. This script is designed to clean up PB for any compliance or cleanup reason. It does so by:
    * stopping services
    * deleting files from C:\Windows\SysWOW64
    * deleting registry entries
6. registry_delete.bat helps to clean EvenBalance (pb company) registry entries that aren't needed
7. registry_keys_backup.reg is a backup of the registry entries... just in case.
  

## How to use
1. Use "Clone or Donwload" button on top right of this page to download and extract anywhere on your PC
2. Copy pb folder into your rtcw game folder.
3. Right click on pbstart.bat and Run as Administrator
 Done
 
 Next you can use pbcheck.bat to see if services are running ok and pbstop.bat to clean things up if ever needed.
