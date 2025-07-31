---
title: Testing Application
---

Now that we have the agent steering rules in place, we can test the application again to verify that OpenCode is able to properly start up the application. With the steering documents providing context about the project structure and how to build and run the Flask app, OpenCode should now have the knowledge it needs to succeed.

Let's direct OpenCode to run the application again and see the difference.

{{< submit-prompt >}}
Run the application in this directory
{{< /submit-prompt >}}

The Flask application runs and listens on `localhost:8080`, but in this workshop environment we don't have direct access to that from our local browser. Instead, we'll open the application in a new tab within the workshop dashboard, which provides access to the running application through the workshop's ingress router.

```dashboard:reload-dashboard
name: Hello
url: {{< param ingress_protocol >}}://helloworld-{{< param session_hostname >}}
```

Now that we have verified the application works and can successfully start up with OpenCode's assistance, let's move on to making some code changes using OpenCode.
