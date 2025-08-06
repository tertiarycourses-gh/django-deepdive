#!/bin/bash

# Django 101 Setup Script
# This script demonstrates the complete Django setup process

echo "=== Django 101 Setup Script ==="
echo "This script will guide you through setting up a Django project"
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✅ Python 3 is installed: $(python3 --version)"
echo ""

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

if [ $? -eq 0 ]; then
    echo "✅ Virtual environment created successfully"
else
    echo "❌ Failed to create virtual environment"
    exit 1
fi

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate

if [ $? -eq 0 ]; then
    echo "✅ Virtual environment activated"
    echo "   Python path: $(which python)"
else
    echo "❌ Failed to activate virtual environment"
    exit 1
fi

# Install Django
echo "📥 Installing Django..."
pip install django

if [ $? -eq 0 ]; then
    echo "✅ Django installed successfully"
    echo "   Django version: $(python -m django --version)"
else
    echo "❌ Failed to install Django"
    exit 1
fi

# Create requirements.txt
echo "📝 Creating requirements.txt..."
pip freeze > requirements.txt
echo "✅ requirements.txt created"

# Create Django project
echo "🚀 Creating Django project..."
django-admin startproject myproject .

if [ $? -eq 0 ]; then
    echo "✅ Django project created successfully"
else
    echo "❌ Failed to create Django project"
    exit 1
fi

# Run initial migrations
echo "🗄️  Running initial migrations..."
python manage.py migrate

if [ $? -eq 0 ]; then
    echo "✅ Database migrations completed"
else
    echo "❌ Failed to run migrations"
    exit 1
fi

# Create .gitignore
echo "📋 Creating .gitignore..."
cat > .gitignore << 'EOF'
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*$py.class

# Virtual environment
venv/
env/
ENV/

# Django
*.log
local_settings.py
db.sqlite3
db.sqlite3-journal

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db
EOF

echo "✅ .gitignore created"

echo ""
echo "🎉 Setup completed successfully!"
echo ""
echo "Next steps:"
echo "1. Activate the virtual environment: source venv/bin/activate"
echo "2. Run the development server: python manage.py runserver"
echo "3. Open your browser and go to: http://127.0.0.1:8000/"
echo ""
echo "To stop the server, press Ctrl+C"
echo "To deactivate the virtual environment, run: deactivate" 