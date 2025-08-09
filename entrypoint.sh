#!/bin/bash

# Start Ollama in the background.
/bin/ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 5

echo "pull gemma3:1b"
ollama pull gemma3:1b

echo "pull gemma3:4b"
ollama pull gemma3:4b

# # =====================
# # 底下是測試用

# echo "pull meta-llama/Meta-Llama-3.1-8B-Instruct -> linbeiJiang/Llama-3.1-8B-Instruct"
# ollama pull linbeiJiang/Llama-3.1-8B-Instruct

# echo "pull nomic-ai/nomic-embed-text-v1 -> DC1LEX/nomic-embed-text-v1.5-multimodal"
# ollama pull DC1LEX/nomic-embed-text-v1.5-multimodal

# echo "pull Qwen/Qwen2.5-Coder-1.5B -> dagbs/qwen2.5-coder-1.5b-instruct-abliterated"
# ollama pull dagbs/qwen2.5-coder-1.5b-instruct-abliterated

# echo "qwen2.5-coder:32b"
# ollama pull qwen2.5-coder:32b

# echo "qwen2.5-coder:7b"
# ollama pull qwen2.5-coder:7b

# echo "starcoder2:15b"
# ollama pull starcoder2:15b

# # 拉取 bge-m3
# echo "bge-m3"
# ollama pull bge-m3

# echo "dengcao/Qwen3-Reranker-8B:Q3_K_M"
# ollama pull dengcao/Qwen3-Reranker-8B:Q3_K_M

# echo "gpt-oss:20b"
# ollama pull gpt-oss:20b

# # 讓 gpt-oss:20b 永不釋放
# # 這邊用一次性請求，保持模型載入狀態
# curl http://localhost:11434/api/generate \
#   -d '{
#     "model": "gpt-oss:20b",
#     "prompt": "init",
#     "keep_alive": -1,
#     "stream": false
#   }'

# =================================================================

echo "Ollama is running"

# Wait for Ollama process to finish.
# ollama serve

wait $pid