# Define the default target
.DEFAULT_GOAL := all

# Define the Python executable
PYTHON := python

# Define the pip executable
PIP := pip

# Define the requirements file
REQUIREMENTS := requirements.txt

# Define the scripts
EXTRACT_SCRIPT := extract.py
MAIN_SCRIPT := scripts/main.py

# Default target: run extract.py, install requirements, and run main.py
all: extract install-requirements run-main

# Run extract.py
extract:
	$(PYTHON) $(EXTRACT_SCRIPT)

# Install required packages
install-requirements:
	$(PIP) install -r $(REQUIREMENTS)

# Run main.py
run-main:
	$(PYTHON) $(MAIN_SCRIPT)

# Clean target (optional): cleans up any generated files if needed
clean:
	@echo "Nothing to clean"

# Phony targets to avoid conflicts with files of the same name
.PHONY: all extract install-requirements run-main clean
