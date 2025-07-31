---
title: Sample Application
---

This workshop includes a simple sample application built using Python and Flask. The application demonstrates a basic web server that serves a "Hello, World!" message and provides a health check endpoint.

## Application Structure

The sample application is located in the `exercises` directory and consists of:

- **`main.py`** - The main Flask application code
- **`pyproject.toml`** - Python package configuration using uv for dependency management
- **`README.md`** - Setup and running instructions

The Flask application runs on port 8080 and includes:
- A root route (`/`) that displays a welcome message
- A health check endpoint (`/health`) for monitoring the application status

## Testing with OpenCode

To test that the application is working correctly, you can ask OpenCode to run the application for you.

Simply ask OpenCode something like: "Run the application in this directory".

{{< submit-prompt >}}
Run the application in this directory
{{< /submit-prompt >}}

## What You'll Actually Find

When you first ask OpenCode to run the application, you'll likely find that it struggles to know how to proceed, or it might attempt something completely incorrect. 

This confusion often occurs because OpenCode doesn't know which Python environment approach to use - should it use `pip` to create a virtual environment, or should it use `uv` as specified in our project configuration? Without clear guidance about the project's preferred tooling, it may default to approaches that don't match our setup.

The root cause is that the project hasn't been properly initialized, and we haven't provided the agent rules that would give OpenCode the specific guidance it needs about our development environment, project structure, dependencies, and execution requirements.

This demonstrates an important aspect of working with AI coding assistants - they need to be properly configured and given appropriate context to be effective in your development workflow.

## If OpenCode Does Run the Application

However, if OpenCode successfully figures out how to run the application on its own by analyzing the project structure and available files, then you can proceed to test stopping the application. This demonstrates OpenCode's ability to understand project context when sufficient information is available.

{{< submit-prompt >}}
Stop the application
{{< /submit-prompt >}}

The key takeaway is that AI coding assistants perform significantly better when they're provided with proper configuration and clear instructions.
