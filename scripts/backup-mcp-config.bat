@echo off
echo Backing up current VS Code MCP configuration...

set VSCODE_MCP_PATH="%APPDATA%\Code\User\mcp.json"
set BACKUP_PATH="C:\Users\Noor\mcp-config\configs\mcp-backup-%DATE:~-4,4%%DATE:~-10,2%%DATE:~-7,2%.json"

if exist %VSCODE_MCP_PATH% (
    copy %VSCODE_MCP_PATH% %BACKUP_PATH%
    echo Backup created at %BACKUP_PATH%
) else (
    echo No existing MCP configuration found in VS Code
)

echo Done!
