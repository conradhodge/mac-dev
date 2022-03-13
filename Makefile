HOME ?= `$HOME`

explain:
	### Welcome
	#
	# Makefile for a macOS development machine
	#
	### Targets
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup: ## Set up githooks
	cp scripts/githooks/* .git/hooks/

.PHONY: vet
vet: ## Vet the playbook
	ansible-playbook ansible/mac.yml --syntax-check

.PHONY: provision
provision: setup-git-config ## Provision your macOS machine
	ansible-playbook -i ansible/hosts ansible/mac.yml --verbose --ask-become-pass

.PHONY: setup-git-config
setup-git-config: ## Setup the gitconfig in your home directory if not already configured
ifeq ("$(wildcard $(HOME)/.gitconfig)","")
	@echo "Enter your full name - This is how git will report your work";
	@read name; \
	git config --global user.name "$$name"

	@echo "Enter your email address";
	@read email; \
	git config --global user.email $$email
endif
