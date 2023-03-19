@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
type pipes_main\bom\digi-key\pipes_main_split.csv > bom\pipes_split.csv
rem type pipes_sub\bom\digi-key\pipes_sub_split.csv >> pipes_split.csv

set ok=dfdfd
for /f "tokens=*" %%a in (pipes_sub\bom\digi-key\pipes_sub_split.csv) do (
  if !ok!==true echo %%a >> bom\pipes_split.csv
  set ok=true
)
	  
pause