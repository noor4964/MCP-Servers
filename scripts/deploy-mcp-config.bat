@echo off
echo Updating VS Code MCP configuration...

set SOURCE_PATH="C:\Users\Noor\mcp-config\configs\mcp.json"
set VSCODE_MCP_PATH="%APPDATA%\Code\User\mcp.json"

if exist %SOURCE_PATH% (
    copy %SOURCE_PATH% %VSCODE_MCP_PATH%
    echo MCP configuration updated in VS Code
    echo Please restart VS Code to apply changes
) else (
    echo Source configuration not found at %SOURCE_PATH%
)

echo Done!
