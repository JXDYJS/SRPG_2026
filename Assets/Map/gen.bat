@echo off
rem ================================================
rem gen.bat - Batch convert all .schem files in
rem raw_data/ to same-named .asset files in Map/
rem ================================================
setlocal enabledelayedexpansion
chcp 65001 >nul
cd /d "%~dp0"

set "RAW_DIR=raw_data"
set "MAPPING=mapping.json"
set "SCRIPT=schem_to_unity.py"

echo === gen.bat - schem to asset batch converter ===
echo.

rem ---- Check python ----
where python >nul 2>nul
if errorlevel 1 (
    echo [ERROR] Python not found in PATH.
    pause
    exit /b 1
)

rem ---- Check nbt library ----
python -c "import nbt" >nul 2>nul
if errorlevel 1 (
    echo [INFO] nbt library missing, installing from requirements.txt...
    python -m pip install -r requirements.txt
    if errorlevel 1 (
        echo [ERROR] Failed to install nbt library.
        pause
        exit /b 1
    )
)

rem ---- Check mapping ----
if not exist "%MAPPING%" (
    echo [ERROR] Mapping file not found: %MAPPING%
    pause
    exit /b 1
)

rem ---- Convert every .schem in raw_data ----
set COUNT=0
set OK=0
set FAILED=0

for %%f in ("%RAW_DIR%\*.schem") do (
    set /a COUNT+=1
    echo.
    echo [!COUNT!] %%f
    python "%SCRIPT%" -s "%%f" -m "%MAPPING%" -o "%%~nf.asset"
    if errorlevel 1 (
        echo [FAILED] %%~nf.asset
        set /a FAILED+=1
    ) else (
        echo [OK] %%~nf.asset generated in %CD%
        set /a OK+=1
    )
)

echo.
echo === SUMMARY ===
if %COUNT%==0 (
    echo No .schem files found in %RAW_DIR%\
) else (
    echo Total : %COUNT%
    echo OK    : %OK%
    echo Failed: %FAILED%
)
echo.
echo Done. Refresh Unity editor to import new .asset files.
pause
endlocal
