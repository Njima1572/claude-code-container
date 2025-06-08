## claude-code container

### Getting started

1. `./bin/build` to build the docker contianer

2. `./bin/claude-code` to execute
   - (Optional): Modify the volumes that you want to mount under `bin/volumes.sh`

### Setup proxy with block / allow list

Under `privoxy/user.action`

```
{ +block }
/

{ -block }
.anthropic.com

# Add any other whitelist urls here

```

