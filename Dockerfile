FROM ollama/ollama:0.11.3

RUN apt-get update
RUN apt-get install -y curl