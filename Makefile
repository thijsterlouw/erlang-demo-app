-include erl-project/make/Makefile-common.mk
.PHONY : update
SHELL := /bin/bash

############################
#   COMMON ENTRIES BELOW   #
############################

# First target so we can run without explicit targets
# inherits from common Makefile, but runs first
all::       update priv/extra.config
# getdeps for deployar and setup for ci
setup::		update
getdeps::   update
# sys.config includes a reference to priv/extra.config
# so we need to ensure we always have a (dummy) extra config
priv/extra.config:
	-@$(shell cp rel/files/extra.config priv/extra.config)

############################
#    DO NOT EDIT BELOW     #
############################

# Update erl-project. Allow failures of git (eg. executing git inside Mock env)
update: erl-project
	@echo "Updating erl-project"
	-@cd erl-project && git pull && cd ..

# Clone erl-project (only once executed) and add it to .gitignore
erl-project:
	@echo "Cloning erl-project"
	-@git clone -q git@github.com:spilgames/erl-project.git 
	-@$(shell [[ `grep -c "erl-project" .gitignore` -eq 0 ]] && echo "erl-project" >> .gitignore)
	@make $(MAKECMDGOALS)
