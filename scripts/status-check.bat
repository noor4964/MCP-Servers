@echo off
echo Checking MCP Server Status...
echo ============================

echo.
echo Current VS Code MCP Configuration:
if exist "%APPDATA%\Code\User\mcp.json" (
    echo [✓] MCP configuration found
    echo Location: %APPDATA%\Code\User\mcp.json
    echo.
    echo Content preview:
    type "%APPDATA%\Code\User\mcp.json" | findstr /n "."
) else (
    echo [✗] No MCP configuration found in VS Code
)

echo.
echo Available MCP Server Packages:
echo Checking @modelcontextprotocol/server-filesystem...
npx @modelcontextprotocol/server-filesystem --version 2>nul && echo [✓] Filesystem server available || echo [?] Filesystem server status unknown

echo.
echo Git Status:
git status --porcelain 2>nul && echo [✓] Git repository active || echo [?] Not in a git repository

echo.
pause
