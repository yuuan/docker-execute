BASE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
ALIAS_DIR := $(BASE_DIR)/aliases
DIST_DIR := /usr/local/bin
LN := /bin/ln
RM := /bin/rm

install:
	$(LN) -sf $(ALIAS_DIR)/go-exec $(DIST_DIR)/go-exec
	$(LN) -sf $(ALIAS_DIR)/gotest-exec $(DIST_DIR)/gotest-exec
	$(LN) -sf $(ALIAS_DIR)/composer-exec $(DIST_DIR)/composer-exec
	$(LN) -sf $(ALIAS_DIR)/artisan-exec $(DIST_DIR)/artisan-exec
	$(LN) -sf $(ALIAS_DIR)/phpstan-exec $(DIST_DIR)/phpstan-exec
	$(LN) -sf $(ALIAS_DIR)/phpunit-exec $(DIST_DIR)/phpunit-exec
	$(LN) -sf $(ALIAS_DIR)/node-exec $(DIST_DIR)/node-exec
	$(LN) -sf $(ALIAS_DIR)/yarn-exec $(DIST_DIR)/yarn-exec
	$(LN) -sf $(ALIAS_DIR)/bundle-exec $(DIST_DIR)/bundle-exec
	$(LN) -sf $(ALIAS_DIR)/rails-exec $(DIST_DIR)/rails-exec
	$(LN) -sf $(ALIAS_DIR)/hanami-exec $(DIST_DIR)/hanami-exec
	$(LN) -sf $(ALIAS_DIR)/rspec-exec $(DIST_DIR)/rspec-exec
	$(LN) -sf $(ALIAS_DIR)/mysql-exec $(DIST_DIR)/mysql-exec

uninstall:
	$(RM) -f $(DIST_DIR)/go-exec
	$(RM) -f $(DIST_DIR)/gotest-exec
	$(RM) -f $(DIST_DIR)/composer-exec
	$(RM) -f $(DIST_DIR)/artisan-exec
	$(RM) -f $(DIST_DIR)/phpstan-exec
	$(RM) -f $(DIST_DIR)/phpunit-exec
	$(RM) -f $(DIST_DIR)/node-exec
	$(RM) -f $(DIST_DIR)/yarn-exec
	$(RM) -f $(DIST_DIR)/bundle-exec
	$(RM) -f $(DIST_DIR)/rails-exec
	$(RM) -f $(DIST_DIR)/hanami-exec
	$(RM) -f $(DIST_DIR)/rspec-exec
	$(RM) -f $(DIST_DIR)/mysql-exec

reinstall: uninstall install ;

.PHONY: install uninstall reinstall
