# description
this is an index of current docker image build files.
## building
i've added some handy shortcuts into docker-cmds.sh which just need to be sourced. note for this to work you need to set and environment variable DOCKER_REG_DIR to be the location of your docker registry
1. cd into the image you want to build and `buildcd`
2. test the image to ensure it works in its current state
3. `dtag` to tag the image as `:latest`
4. `dpush` to push the image to your registry
