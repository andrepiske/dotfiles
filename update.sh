#!/bin/bash
set -v
echo "Fetching latest changes"
git pull --rebase
echo "Updating submodules"
git submodule update --init --recursive
echo "Done"
