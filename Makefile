SHELL = /bin/sh
PATTERN := %.md
CURRENT_BRANCH := HEAD
BASE_BRANCH := master
FILES := $(shell git diff --name-only $(BASE_BRANCH)..$(CURRENT_BRANCH))
DOCUMENTATION := $(strip $(filter $(PATTERN),$(FILES)))
NON_DOCUMENTATION := $(strip $(filter-out $(PATTERN),$(FILES)))
all:
ifdef NON_DOCUMENTATION
	@echo $(error Non-documentation code in this branch: $(NON_DOCUMENTATION))
else ifdef DOCUMENTATION
	@echo "Swweeeet documentation only! " $(DOCUMENTATION)
endif
