#!/bin/bash

set -e

source scripts/helpers/runLog.sh "Adding inventory variables..."

prod='export prod_inventory="ansible/inventories/prod/inventory.ini"'
staging='export staging_inventory="ansible/inventories/staging/inventory.ini"'

if ! grep -Fxq "$prod" ~/.bashrc; then
  echo "$prod" >> ~/.bashrc
  source ~/.bashrc
  
  source scripts/helpers/successLog.sh "Production inventory variable added to ~/.bashrc successfully."
else
  source scripts/helpers/warningLog.sh "Production inventory variable already exists in ~/.bashrc"
fi

if ! grep -Fxq "$staging" ~/.bashrc; then
  echo "$staging" >> ~/.bashrc
  source ~/.bashrc

  source scripts/helpers/successLog.sh "Staging inventory variable added to ~/.bashrc successfully."
else
  source scripts/helpers/warningLog.sh "Staging inventory variable already exists in ~/.bashrc"
fi

source scripts/helpers/doneLog.sh "Inventory variables setup completed."