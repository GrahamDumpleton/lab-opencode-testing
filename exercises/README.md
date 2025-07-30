# Flask Hello World App

A simple Flask web application for the OpenCode Testing Lab.

## Setup and Run

1. Install dependencies using uv:
   ```bash
   uv sync
   ```

2. Run the application:
   ```bash
   uv run python main.py
   ```

3. Visit the application:
   - Main page: http://localhost:8080
   - Health check: http://localhost:8080/health

## Features

- Simple "Hello, World!" homepage
- Health check endpoint
- Runs on port 8080
- Debug mode enabled for development
