#!/bin/bash

# test_app.sh - Testa se a aplicação está rodando corretamente no Kubernetes

APP_URL="http://localhost"

echo "🔍 Testando acesso à aplicação em: $APP_URL"

# Envia uma requisição para o endereço da aplicação
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" "$APP_URL")

if [ "$RESPONSE" -eq 200 ]; then
    echo "✅ Aplicação respondendo com sucesso (HTTP 200)"
else
    echo "❌ Erro: Aplicação não respondeu corretamente (HTTP $RESPONSE)"
    exit 1
fi
