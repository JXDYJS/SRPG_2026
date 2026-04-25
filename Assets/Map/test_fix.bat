@echo off
cd /d "E:\unity\SRPG_2026\Assets\Map"
echo Running schem_to_unity.py with fix...
python .\schem_to_unity.py -s map01.schem -m mapping.json -o test_final.asset
echo.
echo === TEST COMPLETE ===
echo Please check test_final.asset for correct results
echo.
echo Expected: Different prefabIds for different block types
echo.
pause
