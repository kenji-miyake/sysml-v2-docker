#!/bin/bash

PROJECT_DIR=/project

if [ ! -d "$PROJECT_DIR" ]; then
  echo "$PROJECT_DIR was not found. Please mount your project to $PROJECT_DIR by adding an option '-v YOUR_PROJECT_DIR:/projcet'."
  exit 1
fi

/add-project.sh "$PROJECT_DIR"
eclipse
