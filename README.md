# Flask CI/CD Practice App

This is a simple Flask application designed for CI/CD practice. It includes unit tests, code quality checks (linting), and coverage reporting.

## Setup

1. Create a virtual environment:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Running the App

```bash
python app.py
```

## CI/CD Tasks

### 1. Code Quality (Linting)
Run `flake8` to check for code style issues:
```bash
flake8 .
```

### 2. Run Tests & Coverage
Run `pytest` to execute tests and generate a coverage report:
```bash
pytest
```
- The coverage report will be shown in the terminal.
- A detailed HTML report will be generated in the `htmlcov/` directory.

## Suggested CI/CD Workflow (GitHub Actions)

Create a file at `.github/workflows/main.yml`:

```yaml
name: CI

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: Set up Python
      uses: actions/setup-python@v2
      with:
        python-version: '3.9'
    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install -r requirements.txt
    - name: Lint with flake8
      run: |
        flake8 .
    - name: Test with pytest
      run: |
        pytest
```
