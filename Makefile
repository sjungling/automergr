PATTERN=%.md
FILES=$(shell git diff --name-only master..HEAD)
NON_DOCUMENTATION=$(filter-out $(PATTERN),$(FILES))
all:
	@echo "$(strip $(NON_DOCUMENTATION))"
	# ifeq ($(strip $(NON_DOCUMENTATION)),)
	# 	@echo "Found stuff"
	# else
	# 	@echo "Didn't Found stuff"
	# endif
