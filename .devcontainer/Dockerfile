ARG NODE_VERSION="22-bookworm"
ARG PYTHON_VERSION="3.12-bookworm"

# Node.js ベースイメージ（Nuxt開発用）
FROM node:${NODE_VERSION} as dev-base

# Python をインストール
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# uv (Pythonパッケージマネージャ) をインストール
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# 開発用ツール
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    wget \
    vim \
    nano \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

# Node.jsの補足設定
ENV NODE_ENV=development
ENV NPM_CONFIG_LOGLEVEL=warn

# Pythonの設定
ENV PYTHONUNBUFFERED=1
ENV PATH="/root/.local/bin:$PATH"

CMD ["/bin/bash"]
