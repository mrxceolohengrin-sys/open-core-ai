#!/usr/bin/env bash

echo "Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

echo "Starting Ollama..."
ollama serve &

sleep 5

echo "Pulling model..."
ollama pull qwen2.5-coder:7b

echo "Setup complete."
