---
title: Agent Steering
---

AI coding assistants work best when guided by rules or steering documents that provide context about your project structure, coding standards, and workflows. These instructions help the agent understand how to work effectively within your specific development environment.

For OpenCode to analyze your project and create the initial rules or steering documents automatically, you use the `/init` command at the prompt. This command tells OpenCode to examine your codebase and generate appropriate guidance for future interactions.

```editor:execute-command
prefix: OpenCode
title: Submit Prompt
description: |-
    /init
command: workbench.action.terminal.focus
cascade: true
```

```editor:execute-command
hidden: true
command: workbench.action.terminal.sendSequence
args:
- { "text": "/init\u000D" }
```

Once OpenCode has finished analyzing your project and generating the steering documents, you can review what it has created by looking at the AGENTS.md file. This file contains the rules and context that will guide future interactions with the AI assistant.

```editor:open-file
file: ~/exercises/AGENTS.md
```

Now that OpenCode has the steering documents in place, it should have the knowledge it needs about how to build and run the application. The agent will use these instructions to guide its responses when you ask it to perform development tasks.
