#!/bin/bash

set -e

source ./scripts/helpers/runLog.sh "Installing pre-push hook..."

cp ./scripts/prePush.sh .git/hooks/pre-push
chmod +x .git/hooks/pre-push

source ./scripts/helpers/successLog.sh "Pre-push hook installed successfully!"

source ./scripts/addInventoriesVariable.sh

