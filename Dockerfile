FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=http

EXPOSE 5678

# Находим и запускаем точку входа
CMD ["sh", "-c", "node $(find /home/node -name 'index.js' | head -n 1)"]
