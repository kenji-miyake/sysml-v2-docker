#!/bin/bash

PROJECT_DIR="$1"

if [ ! -d "$PROJECT_DIR" ]; then
  echo "$PROJECT_DIR was not found."
  exit 1
fi

eclipse -nosplash -application com.seeq.eclipse.importprojects.headlessimport \
  -data /opt/workspace \
  -import "$PROJECT_DIR"
