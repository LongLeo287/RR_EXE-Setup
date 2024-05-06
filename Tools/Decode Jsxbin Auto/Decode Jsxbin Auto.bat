@echo off
rem Script created by [Gyn] and [Longleo]
rem This script processes .jsxbin files using jsxer.exe silently

set "source_folder=Source"
set "data_folder=Data"
set "export_folder=Export"

rem Suppress all output
> NUL 2>&1 (

    echo Processing .jsxbin files silently...

    rem Change directory to the source folder
    cd /d "%~dp0\%source_folder%"

    rem Loop through each .jsxbin file in the source directory
    for %%f in (*.jsxbin) do (
        echo Processing %%f silently...
        rem Run jsxer.exe from the data folder on each .jsxbin file silently
        "%~dp0\%data_folder%\jsxer.exe" "%%f" > NUL 2>&1
        rem Move the output file to the export folder silently, renaming it with "R&R" at the end
        for %%A in ("%%~nf.jsx") do (
            move "%%~A" "%~dp0\%export_folder%\%%~nA - R&R%%~xA" > NUL 2>&1
        )
    )

    echo All .jsxbin files processed silently.
)
