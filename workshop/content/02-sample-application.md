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

```editor:execute-command
prefix: OpenCode
title: Submit Prompt
description: |-
    Run the application in this directory
command: workbench.action.terminal.focus
cascade: true
```

```editor:execute-command
hidden: true
command: workbench.action.terminal.sendSequence
args:
- { "text": "Run the application in this directory\u000D" }
```

## What You'll Actually Find

When you first ask OpenCode to run the application, you'll likely find that it struggles to know how to proceed, or it might attempt something completely incorrect. This happens because the project hasn't been properly initialized, and we haven't provided the agent rules that would give OpenCode the guidance it needs.

OpenCode needs proper project configuration and context to understand how to work with your specific application. Without initialization and clear agent rules, it lacks the knowledge of your project structure, dependencies, and execution requirements.

This demonstrates an important aspect of working with AI coding assistants - they need to be properly configured and given appropriate context to be effective in your development workflow.

## If OpenCode Does Run the Application

However, if OpenCode successfully figures out how to run the application on its own by analyzing the project structure and available files, then you can proceed to test stopping the application. This demonstrates OpenCode's ability to understand project context when sufficient information is available.

```editor:execute-command
prefix: OpenCode
title: Submit Prompt
description: |-
    Stop the application
command: workbench.action.terminal.focus
cascade: true
```

```editor:execute-command
hidden: true
command: workbench.action.terminal.sendSequence
args:
- { "text": "Stop the application\u000D" }
```

The key takeaway is that AI coding assistants perform significantly better when they're provided with proper configuration and clear instructions.
