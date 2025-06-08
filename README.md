# Claude Code Container

A containerized environment for running Claude Code CLI with proxy support and configurable volume mounting.

## Quick Start

1. **Build the container:**
   ```bash
   ./bin/build
   ```

2. **Run Claude Code:**
   ```bash
   ./bin/claude-code
   ```

## Configuration

### Volume Mounting
Edit `volumes.txt` to configure mounted volumes:
```
# Format: source:destination:rw
/home/user/project:/workspace:rw
```

The script `bin/volumes.sh` reads from this file to set up Docker volumes.

### Proxy Configuration
Configure network access in `privoxy/user.action`:

```
{ +block }
/

{ -block }
.anthropic.com

# Add other allowed domains here
```

### Adding Languages/Libraries
Modify `Dockerfile.claude` to install additional tools:
```dockerfile
RUN apt-get update && \
    apt-get install -y your-package && \
    rm -rf /var/lib/apt/lists/*
```

## Project Structure

- `bin/` - Build and execution scripts
- `claude/` - Claude configuration directory
- `privoxy/` - Proxy configuration
- `volumes.txt` - Volume mount configuration
- `docker-compose.yml` - Service orchestration
- `Dockerfile.claude` - Container definition

## Development

See `CLAUDE.md` for detailed maintenance guidelines and development workflow.
