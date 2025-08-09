# MCP Configuration Management

This directory contains your Model Context Protocol (MCP) configuration files and related resources.

## Directory Structure

- `configs/` - MCP configuration files
- `servers/` - Custom MCP server implementations
- `scripts/` - Management and utility scripts

## Available Configurations

- **mcp.json** - Basic filesystem server with directory prompts
- **mcp-with-sqlite.json** - Filesystem + SQLite server combination  
- **mcp-preset-dirs.json** - Filesystem server with preset directories
- **mcp-with-mysql.json** - Filesystem + MySQL server combination
- **Server**: @modelcontextprotocol/server-filesystem@2025.7.29

## Usage

1. **Switch configurations**: Run `scripts\switch-config.bat` to choose and deploy a configuration
2. **Check status**: Run `scripts\status-check.bat` to verify your current setup
3. **Manual management**: Use individual backup/deploy scripts as needed
4. **Version control**: Use Git to track changes to your configurations

## Management Scripts

- `backup-mcp-config.bat` - Backup current VS Code MCP configuration
- `deploy-mcp-config.bat` - Deploy main config to VS Code  
- `switch-config.bat` - **Interactive config switcher** (recommended)
- `status-check.bat` - Check current MCP setup status

## Version Control

This directory is now a Git repository. You can:
- `git status` - Check what files have changed
- `git add .` - Stage changes 
- `git commit -m "message"` - Commit changes
- `git log --oneline` - View commit history

## Notes

- Always backup your configurations before making changes
- Test new configurations in a separate environment first
