# Define project directory and cache directories
PROJECT_DIR := $(shell pwd)
TERRAGRUNT_WRAPPER := $(PROJECT_DIR)/terragrunt-wrapper.sh

.PHONY: init plan apply init-% plan-% apply-%

# Targets for all components
init:
	$(TERRAGRUNT_WRAPPER) run-all init

plan:
	$(TERRAGRUNT_WRAPPER) run-all plan

apply:
	$(TERRAGRUNT_WRAPPER) run-all apply

# Targets for individual components
init-%:
	cd $* && $(TERRAGRUNT_WRAPPER) init

plan-%:
	cd $* && $(TERRAGRUNT_WRAPPER) plan

apply-%:
	cd $* && $(TERRAGRUNT_WRAPPER) apply
