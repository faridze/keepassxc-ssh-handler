# KeePassXC SSH Handler

Cross-platform SSH URL workflow for KeePassXC (Windows) and Strongbox (macOS).

## URL Format

```text
ssh://{USERNAME}@{S:IP}:{S:SSH/RDP Port}
```

Example:

```text
ssh://root@192.168.1.100:22
```

## Windows

### Features

- Opens PuTTY automatically.
- No visible CMD window.
- Uses a standard ssh:// URL.
- Compatible with shared KeePassXC / Strongbox databases.
- Installs per-user using %LOCALAPPDATA%.
- No Administrator rights required.

### Installation

Run:

```text
install_ssh_handler.bat
```

The installer:

1. Copies handler files to:

```text
%LOCALAPPDATA%\KeePassSSHHandler
```

2. Registers the ssh:// protocol handler.

### Flow

```text
KeePassXC
    ↓
ssh://user@host:22
    ↓
Windows Protocol Handler
    ↓
ssh-handler.vbs
    ↓
ssh-handler.ps1
    ↓
PuTTY
```

## macOS

Use the same URL format.

Strongbox users can configure:

- Termius
- Prompt
- Terminal.app
- iTerm2

as their SSH handler.

## Repository

A lightweight Windows SSH protocol handler for KeePassXC and compatible password managers.
