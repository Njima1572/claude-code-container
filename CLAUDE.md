# Claude Code Container

Containerized Claude Code CLI with proxy and volume mounting.

## Guidelines

### Changes
1. Read files before editing to understand context
2. Be critical and efficient - avoid unnecessary actions
3. Test locally: `./bin/build` then `./bin/claude-code`
4. Commit with: `🤖 Claude: [description]`

### Key Files
- `volumes.txt`: Volume mounts (source:destination:rw)
- `Dockerfile.claude`: Container config
- `privoxy/user.action`: Network access rules
- `bin/volumes.sh`: Volume script

### Commands
- Build: `./bin/build`
- Run: `./bin/claude-code`