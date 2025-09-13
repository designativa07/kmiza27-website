#!/bin/bash

# Script de deploy para EasyPanel
echo "🚀 Iniciando deploy do site KMIZA27..."

# Verificar se está no diretório correto
if [ ! -f "index.html" ]; then
    echo "❌ Erro: index.html não encontrado. Execute este script na pasta do projeto."
    exit 1
fi

# Fazer commit das mudanças
echo "📝 Fazendo commit das mudanças..."
git add .
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"

# Push para o repositório
echo "⬆️ Enviando para o repositório..."
git push origin main

echo "✅ Deploy concluído! O EasyPanel deve detectar as mudanças automaticamente."
echo "🌐 Acesse seu site em: https://futepedia.kmiza27.com"
