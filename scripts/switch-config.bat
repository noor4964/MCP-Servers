@echo off
setlocal enabledelayedexpansion

echo MCP Configuration Manager
echo ========================

echo Available configurations:
echo 1. mcp.json (Basic filesystem server with prompts)
echo 2. mcp-with-sqlite.json (Filesystem + SQLite servers)
echo 3. mcp-preset-dirs.json (Filesystem with preset directories)
echo 4. mcp-with-mysql.json (Filesystem + MySQL servers)

set /p choice=Enter your choice (1-4): 

set config_file=
if "%choice%"=="1" set config_file=mcp.json
if "%choice%"=="2" set config_file=mcp-with-sqlite.json
if "%choice%"=="3" set config_file=mcp-preset-dirs.json
if "%choice%"=="4" set config_file=mcp-with-mysql.json

if "%config_file%"=="" (
    echo Invalid choice!
    pause
    exit /b 1
)

echo.
echo Backing up current VS Code configuration...
call "%~dp0backup-mcp-config.bat"

echo.
echo Deploying %config_file%...
set SOURCE_PATH="C:\Users\Noor\mcp-config\configs\%config_file%"
set VSCODE_MCP_PATH="%APPDATA%\Code\User\mcp.json"

copy %SOURCE_PATH% %VSCODE_MCP_PATH%
echo.
echo Configuration updated! Please restart VS Code to apply changes.
echo Active configuration: %config_file%

pause
