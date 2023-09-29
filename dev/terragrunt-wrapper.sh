#!/bin/bash
# terragrunt-wrapper.sh

# Set absolute paths for cache directories
export TERRAGRUNT_DOWNLOAD=/absolute/path/to/your/project/.terragrunt-cache
export TF_PLUGIN_CACHE_DIR=$TERRAGRUNT_DOWNLOAD/.plugins

# Invoke the real terragrunt command with the original arguments
exec terragrunt "$@"
