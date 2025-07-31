---
title: Making Changes
---

Now let's test OpenCode's ability to make meaningful code changes to our application. We'll ask it to improve the home landing page by implementing Bootstrap for styling and Jinja2 templates for better structure, creating a more modern and professional-looking page.

This will demonstrate how OpenCode can enhance existing applications with modern web development practices and frameworks.

{{< submit-prompt >}}
Improve the home landing page of this Flask application to use Bootstrap and Jinja2 templates. Make it a nice modern page with proper styling.
{{< /submit-prompt >}}

Sometimes during complex tasks like this, the AI model may encounter an error or stop mid-process. If this happens, don't worry - simply ask the model to continue from where it left off. You can prompt it with something like "Please continue" or "Continue with the implementation" and it will pick up where it stopped.

Once the code generation is completed, you'll need to ask the agent to stop the application if it's still running from before, and then run it again to see the changes take effect.

{{< submit-prompt >}}
Stop the application if it's running, then run the application again
{{< /submit-prompt >}}

Once the application is running again with your changes, reload the dashboard application to see the improved home page with Bootstrap styling and Jinja2 templates.

```dashboard:delete-dashboard
title: Reload Dashboard "Hello"
name: Hello
glyph: fa-rotate
cascade: true
```

```dashboard:reload-dashboard
name: Hello
url: {{< param ingress_protocol >}}://helloworld-{{< param session_hostname >}}
hidden: true
```
