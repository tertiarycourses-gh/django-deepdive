# Django 101: Getting Started with Django

## Overview
This tutorial will guide you through setting up your first Django project from scratch. By the end of this tutorial, you'll have a working Django development environment and understand the basic concepts of Django's architecture.

## Prerequisites
- Python 3.8 or higher installed on your system
- Basic understanding of Python syntax
- A text editor (VS Code, PyCharm, Sublime Text, etc.)
- Terminal/Command Prompt access

## What You'll Learn
- Setting up a Python virtual environment
- Installing Django
- Creating your first Django project
- Understanding Django's project structure
- Running the development server
- Basic Django concepts and terminology

## Step-by-Step Guide

### 1. Setting Up Your Development Environment

#### Create a Virtual Environment
Virtual environments are isolated Python environments that allow you to install packages without affecting your system Python installation.

```bash
# Navigate to your project directory
cd django-101

# Create a virtual environment
python -m venv venv

# Activate the virtual environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
# venv\Scripts\activate
```

**Why Virtual Environments?**
- Isolate project dependencies
- Avoid conflicts between different projects
- Keep your system Python clean
- Make projects reproducible

#### Install Django
With your virtual environment activated, install Django:

```bash
# Install Django
pip install django

# Verify installation
python -m django --version
```

### 2. Creating Your First Django Project

#### Create the Project
Django projects are created using the `django-admin` command:

```bash
# Create a new Django project
django-admin startproject myproject .

# The '.' at the end is important - it tells Django to create the project in the current directory
```

#### Understanding the Project Structure
After creating your project, you'll see this structure:

```
django-101/
├── manage.py          # Django's command-line utility
├── myproject/         # Your project's Python package
│   ├── __init__.py
│   ├── settings.py    # Project settings/configuration
│   ├── urls.py        # URL declarations
│   ├── asgi.py        # ASGI-compatible web server entry point
│   └── wsgi.py        # WSGI-compatible web server entry point
└── venv/             # Your virtual environment
```

**Key Files Explained:**
- `manage.py`: Django's command-line utility for administrative tasks
- `settings.py`: Contains all project settings (databases, installed apps, middleware, etc.)
- `urls.py`: URL configuration (routing)
- `wsgi.py`: Web Server Gateway Interface (for production deployment)
- `asgi.py`: Asynchronous Server Gateway Interface (for async support)

### 3. Running the Development Server

#### Start the Server
```bash
# Run the development server
python manage.py runserver
```

You should see output like:
```
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
Month Day, Year - HH:MM:SS
Django version X.X.X, using settings 'myproject.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
```

#### Access Your Application
Open your web browser and navigate to:
- http://127.0.0.1:8000/ or http://localhost:8000/

You should see Django's default welcome page!

### 4. Understanding Django's Architecture

#### MVT Pattern (Model-View-Template)
Django follows the MVT (Model-View-Template) pattern, which is Django's take on MVC:

- **Model**: Represents data structure and database schema
- **View**: Contains the business logic and handles requests
- **Template**: Presentation layer (HTML, CSS, JavaScript)

#### Key Django Concepts

**Projects vs Apps:**
- **Project**: A collection of settings and apps
- **App**: A module that handles a specific functionality

**URLs and Views:**
- URLs map web addresses to views
- Views contain the logic to handle requests and return responses

**Settings:**
- `settings.py` contains all configuration
- Database settings, installed apps, middleware, etc.

### 5. Basic Django Commands

```bash
# Create a new app
python manage.py startapp myapp

# Make database migrations
python manage.py makemigrations

# Apply migrations to database
python manage.py migrate

# Create a superuser (admin)
python manage.py createsuperuser

# Collect static files (for production)
python manage.py collectstatic

# Run tests
python manage.py test
```

### 6. Development Best Practices

#### Always Use Virtual Environments
```bash
# Deactivate when done
deactivate

# Reactivate when returning to work
source venv/bin/activate
```

#### Keep Dependencies Updated
```bash
# Generate requirements.txt
pip freeze > requirements.txt

# Install from requirements.txt
pip install -r requirements.txt
```

#### Use Version Control
```bash
# Initialize git repository
git init

# Create .gitignore
echo "venv/" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "*.pyc" >> .gitignore
echo ".env" >> .gitignore
```

### 7. Troubleshooting Common Issues

#### Port Already in Use
If you get "Port 8000 is already in use":
```bash
# Use a different port
python manage.py runserver 8001
```

#### Virtual Environment Not Activated
If you get "django-admin: command not found":
```bash
# Make sure virtual environment is activated
source venv/bin/activate
```

#### Database Issues
If you get database errors:
```bash
# Apply migrations
python manage.py migrate
```

### 8. Next Steps

Congratulations! You've successfully set up your first Django project. In the next tutorials, you'll learn:

- Creating Django apps
- Building models and databases
- Creating views and templates
- Working with forms
- User authentication
- And much more!

## Project Files

This tutorial creates the following files:
- `manage.py`: Django's command-line utility
- `myproject/settings.py`: Project configuration
- `myproject/urls.py`: URL routing
- `myproject/wsgi.py`: WSGI configuration
- `myproject/asgi.py`: ASGI configuration
- `requirements.txt`: Project dependencies

## Additional Resources

- [Django Official Documentation](https://docs.djangoproject.com/)
- [Django Tutorial](https://docs.djangoproject.com/en/stable/intro/tutorial01/)
- [Django Girls Tutorial](https://tutorial.djangogirls.org/)

## Notes for Instructors

This tutorial is designed to be:
- **Comprehensive**: Covers all essential setup steps
- **Educational**: Explains the "why" behind each step
- **Practical**: Students can follow along and see immediate results
- **Foundation**: Sets up students for more advanced topics

The tutorial emphasizes:
- Best practices (virtual environments, version control)
- Understanding over memorization
- Troubleshooting common issues
- Clear explanations of Django concepts 