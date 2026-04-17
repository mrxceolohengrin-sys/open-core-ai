#!/usr/bin/env bash

echo "Starting Ollama..."

nohup ollama serve > ollama.log 2>&1 &

# warten bis API hochkommt
until curl -s http://localhost:11434/api/tags >/dev/null; do
  sleep 1
done

echo "Ollama ready"
