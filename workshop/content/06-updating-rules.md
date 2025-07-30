---
title: Updating Rules
---

The application should now be working with the improved Bootstrap styling and Jinja2 templates. If it's not working properly, you should try iterating by providing more prompts to OpenCode, see if you can fix any issues by looking at the code and asking for specific corrections.

However, there's an important next step: we need to ensure that the agent still knows about our new infrastructure that we're using. We want to update the agent rules in the AGENTS.md file (our steering agent documentation) to include information about how we're now using Jinja2 and Bootstrap as part of our infrastructure stack, so that it keeps using these technologies in future changes.

```editor:execute-command
prefix: OpenCode
title: Submit Prompt
description: |-
    Update the AGENTS.md file to include that we are now using Jinja2 templates and Bootstrap CSS framework as part of our infrastructure stack
command: workbench.action.terminal.focus
cascade: true
```

```editor:execute-command
hidden: true
command: workbench.action.terminal.sendSequence
args:
- { "text": "Update the AGENTS.md file to include that we are now using Jinja2 templates and Bootstrap CSS framework as part of our infrastructure stack\u000D" }
```

Once OpenCode has updated the AGENTS.md file, you can review it again to see how the steering documentation now includes information about the new infrastructure components.

```editor:open-file
file: ~/exercises/AGENTS.md
```

This now represents the complete cycle of what you go through when developing applications using a coding AI agent. You initialize your project repository so the agent knows about it, you request the changes you want to make, and importantly, you go back and ensure you update the agent documentation whenever needed to reflect changes to the infrastructure or other important issues you need the AI to know about. This cycle ensures the AI agent stays informed and can make consistent, informed decisions throughout your development process.
