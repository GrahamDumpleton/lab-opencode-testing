#!/bin/bash

# Install OpenCode

cat > $HOME/.bashrc <<EOF
PATH=$HOME/.opencode/bin:\$PATH
unset XDG_CONFIG_HOME
EOF

if [ ! -f $HOME/.opencode/bin/opencode ]; then
  curl -fsSL https://opencode.ai/install | bash
else
  echo "OpenCode already installed."
  exit 0
fi

mkdir -p $HOME/.config/opencode

cat > $HOME/.config/opencode/config.json <<'EOF'
{
  "$schema": "https://opencode.ai/config.json",
  "model": "{env:LITELLM_MODEL_NAME}",
  "provider": {
    "litellm": {
      "npm": "@ai-sdk/openai-compatible",
      "options": {
        "apiKey": "{env:LITELLM_API_KEY}",
        "baseURL": "{env:LITELLM_BASE_URL}"
      },
      "models": {
        "{env:LITELLM_MODEL_NAME}": {}
      }
    }
  }
}
EOF
