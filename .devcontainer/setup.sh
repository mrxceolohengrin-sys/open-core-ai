#!/usr/bin/env bash

sudo apt update
sudo apt install -y curl zstd

if ! command -v ollama &> /dev/null
then
  curl -fsSL https://ollama.com/install.sh | sh
fi
