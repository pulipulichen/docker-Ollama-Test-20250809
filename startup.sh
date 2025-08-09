#!/bin/bash

full_path=$(realpath "$0")
base_dir=$(dirname "$full_path")
cd "$base_dir"

sudo docker compose down

# 先下載模型
# sudo docker compose up model-downloader --build

# # 啟動 Text-Embedding-Inference 服務
# sudo docker compose up tei

sudo docker compose up --build -d
