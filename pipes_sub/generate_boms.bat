@echo off

echo This creates BOM files for building the Pipes
echo It requires Pipes.xml as an input. Make sure that it is up to date. Use the KiCAD schematic BOM generator with the bom2grouped_csv.xsl plugin that's supplied with KiCAD.

set bin_dir=C:\Program Files\KiCad\bin
set plugin_dir=C:\Users\shann\Dropbox\KiCAD\BOM

"%bin_dir%\python" "%plugin_dir%/bom_lcsc.py" "pipes_sub.xml" "bom\LCSC\pipes_sub_bom.csv"

"%bin_dir%\python" "%plugin_dir%/bom_digikey_split.py" "pipes_sub.xml" "bom\Digi-Key\pipes_sub_split.csv"

"%bin_dir%\python" "%plugin_dir%/bom_digikey_full.py" "pipes_sub.xml" "bom\Digi-Key\pipes_sub_full.csv"

if not errorlevel 1 echo Success!

pause
