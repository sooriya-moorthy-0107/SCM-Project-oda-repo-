#!/bin/bash

echo "Starting Build Process for SMS..."

# 1. Update system and install dependencies
echo "Installing Python dependencies..."
pip install flask

# 2. Run basic syntax check
echo "Running code linting..."
python3 -m py_compile src/backend/app.py

# 3. Success Message
if [ $? -eq 0 ]; then
    echo "Build Successful: v1.0.0"
else
    echo "Build Failed!"
    exit 1
fi