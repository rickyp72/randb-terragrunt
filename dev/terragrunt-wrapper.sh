#!/bin/bash
# terragrunt-wrapper.sh

# Set absolute paths for cache directories
export TERRAGRUNT_DOWNLOAD=/home/ricky/projects/randb-terragrunt-new/.terragrunt-cache
export TF_PLUGIN_CACHE_DIR=$TERRAGRUNT_DOWNLOAD/.plugins

# Invoke the real terragrunt command with the original arguments
exec terragrunt "$@"
