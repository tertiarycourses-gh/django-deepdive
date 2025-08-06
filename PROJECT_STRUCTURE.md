# Django Project Structure

This document explains the structure of your Django project and what each file does.

## Directory Structure

```
django-101/
├── README.md                 # This comprehensive tutorial guide
├── requirements.txt          # Python dependencies
├── manage.py                # Django's command-line utility
├── setup.sh                 # Automated setup script
├── test_setup.py            # Verification script
├── .gitignore              # Git ignore rules
├── PROJECT_STRUCTURE.md     # This file
└── myproject/              # Your Django project package
    ├── __init__.py         # Makes myproject a Python package
    ├── settings.py         # Project settings and configuration
    ├── urls.py             # URL declarations for the project
    ├── wsgi.py             # WSGI-compatible web server entry point
    └── asgi.py             # ASGI-compatible web server entry point
```

## File Descriptions

### Root Level Files

#### `README.md`

- Comprehensive tutorial guide
- Step-by-step instructions
- Best practices and troubleshooting
- Educational explanations of Django concepts

#### `requirements.txt`

- Lists all Python packages and their versions
- Generated with `pip freeze > requirements.txt`
- Used to recreate the environment on other machines
- Example: `Django==4.2.7`

#### `manage.py`

- Django's command-line utility
- Used for administrative tasks
- Examples:
  - `python manage.py runserver`
  - `python manage.py migrate`
  - `python manage.py createsuperuser`

#### `setup.sh`

- Automated setup script
- Creates virtual environment
- Installs Django
- Creates project structure
- Runs initial migrations

#### `test_setup.py`

- Verification script
- Tests if Django is properly configured
- Checks all project files exist
- Verifies database connection

#### `.gitignore`

- Tells Git which files to ignore
- Excludes virtual environment, cache files, etc.
- Keeps repository clean

### Project Package (`myproject/`)

#### `__init__.py`

- Makes the directory a Python package
- Usually empty in Django projects
- Required for Python to recognize the directory as a package

#### `settings.py`

- **Most important file** - contains all project configuration
- Database settings
- Installed apps
- Middleware configuration
- Static files settings
- Security settings
- Internationalization settings

**Key Settings:**

```python
DEBUG = True                    # Development mode
SECRET_KEY = '...'             # Security key (change in production)
DATABASES = {...}              # Database configuration
INSTALLED_APPS = [...]         # List of Django apps
MIDDLEWARE = [...]             # Request/response processing
```

#### `urls.py`

- URL configuration (routing)
- Maps URLs to views
- Entry point for all URL patterns

**Example:**

```python
from django.contrib import admin
from django.urls import path

urlpatterns = [
    path('admin/', admin.site.urls),  # Admin interface
]
```

#### `wsgi.py`

- Web Server Gateway Interface
- Used for production deployment
- Entry point for WSGI-compatible web servers
- Not used in development (manage.py handles this)

#### `asgi.py`

- Asynchronous Server Gateway Interface
- Used for async support
- Entry point for ASGI-compatible servers
- Modern alternative to WSGI

## Django Concepts Explained

### Projects vs Apps

- **Project**: Collection of settings and apps (like `myproject/`)
- **App**: Module that handles specific functionality
- One project can have multiple apps
- Apps can be reused across projects

### MVT Pattern

Django uses Model-View-Template (MVT) pattern:

1. **Model**: Data structure and database schema
2. **View**: Business logic and request handling
3. **Template**: Presentation layer (HTML, CSS, JS)

### URL Routing

- URLs map web addresses to views
- `urls.py` contains URL patterns
- Each pattern has a view function/class
- URLs can include parameters

### Settings

- `settings.py` is the configuration hub
- Contains all project settings
- Environment-specific settings possible
- Security settings for production

## Development Workflow

1. **Setup**: Create virtual environment and install Django
2. **Create Project**: `django-admin startproject myproject`
3. **Create Apps**: `python manage.py startapp myapp`
4. **Define Models**: Create database structure
5. **Create Views**: Write business logic
6. **Create Templates**: Design user interface
7. **Configure URLs**: Map URLs to views
8. **Test**: Run development server and test

## Common Commands

```bash
# Development server
python manage.py runserver

# Create app
python manage.py startapp myapp

# Database migrations
python manage.py makemigrations
python manage.py migrate

# Create superuser
python manage.py createsuperuser

# Collect static files
python manage.py collectstatic

# Run tests
python manage.py test

# Shell
python manage.py shell
```

## Next Steps

After mastering this basic setup, you'll learn:

1. **Creating Apps**: Modular functionality
2. **Models**: Database design and ORM
3. **Views**: Request handling and business logic
4. **Templates**: User interface design
5. **Forms**: User input handling
6. **Authentication**: User management
7. **Admin Interface**: Data management
8. **Static Files**: CSS, JavaScript, images
9. **Deployment**: Going live

## Best Practices

1. **Always use virtual environments**
2. **Keep requirements.txt updated**
3. **Use version control (Git)**
4. **Follow Django naming conventions**
5. **Write tests for your code**
6. **Document your code**
7. **Use environment variables for secrets**
8. **Regular security updates**

## Troubleshooting

### Common Issues:

- **Import errors**: Check virtual environment activation
- **Database errors**: Run `python manage.py migrate`
- **Port conflicts**: Use different port with `runserver 8001`
- **Permission errors**: Check file permissions

### Debugging:

- Check Django debug page for errors
- Use `python manage.py check` for validation
- Check logs in console output
- Verify file paths and imports
