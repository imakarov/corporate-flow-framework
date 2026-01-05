#!/bin/bash

# Corporate Knowledge Base - Initial Setup Script
# Run this once after cloning the repository

echo "Setting up Corporate Knowledge Base..."

# Create personal folder structure (not tracked by git)
mkdir -p personal/tools
mkdir -p personal/inbox
mkdir -p personal/notes

# Create .gitkeep to preserve folder structure
touch personal/.gitkeep

# Copy environment template if .env doesn't exist
if [ ! -f .env ]; then
    cp .env.example .env
    echo "Created .env from template - please add your API keys"
else
    echo ".env already exists - skipping"
fi

# Set up Python virtual environment for tools (optional)
if command -v python3 &> /dev/null; then
    echo "Setting up Python virtual environment in tools/..."
    cd tools
    python3 -m venv venv
    echo "Virtual environment created. Activate with: source tools/venv/bin/activate"
    cd ..
else
    echo "Python3 not found - skipping venv setup"
fi

echo ""
echo "Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit .env with your API keys"
echo "2. Run 'Update all' to pull latest changes"
echo "3. Check CLAUDE.md for usage guidelines"
echo ""
