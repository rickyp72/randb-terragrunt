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

destroy:
	$(TERRAGRUNT_WRAPPER) run-all destroy

# Targets for individual components
init-%:
	cd $* && $(TERRAGRUNT_WRAPPER) init

plan-%:
	cd $* && $(TERRAGRUNT_WRAPPER) plan

apply-%:
	cd $* && $(TERRAGRUNT_WRAPPER) apply

#---
#
## Define project directory
#PROJECT_DIR := $(shell pwd)
#
#.PHONY: init plan apply init-% plan-% apply-%
#
## Targets for all components
#init:
#	$(PROJECT_DIR)/terragrunt-wrapper.sh $(PROJECT_DIR) run-all init
#
#plan:
#	$(PROJECT_DIR)/terragrunt-wrapper.sh $(PROJECT_DIR) run-all plan
#
#apply:
#	$(PROJECT_DIR)/terragrunt-wrapper.sh $(PROJECT_DIR) run-all apply
#
## Targets for individual components
#init-%:
#	cd $* && $(PROJECT_DIR)/terragrunt-wrapper.sh $(PROJECT_DIR) init
#
#plan-%:
#	cd $* && $(PROJECT_DIR)/terragrunt-wrapper.sh $(PROJECT_DIR) plan
#
#apply-%:
#	cd $* && $(PROJECT_DIR)/terragrunt-wrapper.sh $(PROJECT_DIR) apply
