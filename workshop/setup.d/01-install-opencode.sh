#!/bin/bash

# Install OpenCode

cat > $HOME/.bashrc <<EOF
PATH=$HOME/opencode/bin:\$PATH
EOF

if [ ! -f $HOME/.opencode/bin/opencode ]; then
  curl -fsSL https://opencode.ai/install | bash
else
  echo "OpenCode already installed."
  exit 0
fi

curl -fsSL https://opencode.ai/install | bash

mkdir -p $HOME/.config/opencode

cat > $HOME/.config/opencode/config.json <<'EOF'
{
  "$schema": "https://opencode.ai/config.json",
  "model": "openrouter/qwen/qwen3-coder:free",
  "provider": {
    "custom": {
      "npm": "@ai-sdk/openai-compatible",
      "options": {
        "apiKey": "{env:OPENAPI_API_KEY}",
        "baseURL": "{env:OPENAPI_BASE_URL}"
      },
      "models": {
              "openrouter/qwen/qwen3-coder:free": {}
      }
    }
  }
}
EOF

cat >> $HOME/.bashrc <<EOF
unset XDG_CONFIG_HOME
EOF
