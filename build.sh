#!/bin/bash

echo "------------------------------------------"
echo "Starting SCM Build Process for SMS..."
echo "------------------------------------------"

# Check if pip is installed
if ! command -v pip &> /dev/null
then
    echo "Error: pip is not installed. Please install Python/pip."
    exit 1
fi

# Install Flask dependency
echo "Installing Flask module..."
pip install flask

# Run a syntax check on the backend
echo "Verifying backend configuration..."
python3 -m py_compile src/backend/app.py

if [ $? -eq 0 ]; then
    echo "SUCCESS: Build complete and dependencies verified."
else
    echo "FAILURE: Syntax error in app.py. Check your code."
    exit 1
fi