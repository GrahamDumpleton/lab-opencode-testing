---
title: Running OpenCode
---

While you could run OpenCode in a standalone terminal, for this workshop you'll use a terminal integrated within VS Code. This setup offers a more seamless development experience and matches common coding practices.

A VS Code task has been set up to make this easy. You can launch OpenCode by clicking the action below, or by opening the command palette in VS Code, selecting "Task: Run Task," and choosing "OpenCode".

```editor:execute-command
title: Run OpenCode
description: ""
command: workbench.action.tasks.runTask
args:
- OpenCode
```

OpenCode is designed to help with coding tasks, but it also serves as a general-purpose language model that can answer many types of questions. To verify that the LLM is working, ask it a question and check its response.

```editor:execute-command
prefix: OpenCode
title: Submit Prompt
description: |-
    What model are you and what is the cutoff date for what you know?
command: workbench.action.terminal.focus
cascade: true
```

```editor:execute-command
hidden: true
command: workbench.action.terminal.sendSequence
args:
- { "text": "What model are you and what is the cutoff date for what you know?\u000D" }
```

If everything works as expected, you can proceed to test it with a simple coding task.
