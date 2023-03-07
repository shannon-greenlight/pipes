@echo off
set board=pipes_sub
echo Creating gerbers for: %board%
del .\%board%_gerbers.zip
"C:\Program Files\7-Zip\7z.exe" a .\%board%_gerbers.zip .\gerber\*.gbr
"C:\Program Files\7-Zip\7z.exe" a .\%board%_gerbers.zip .\gerber\*.gbrjob
"C:\Program Files\7-Zip\7z.exe" a .\%board%_gerbers.zip .\gerber\*.drl
pause
