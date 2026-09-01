#!/bin/bash
set -e

export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  # shellcheck source=/dev/null
  . "$NVM_DIR/nvm.sh"
  nvm use 16
else
  echo "未检测到 nvm，请安装 Node 16 后再运行"
  exit 1
fi

echo "使用 Node $(node -v) 启动前端..."
exec ./node_modules/.bin/vue-cli-service serve
