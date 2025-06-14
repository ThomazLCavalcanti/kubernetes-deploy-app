# Usando imagem base oficial do Python
FROM python:3.11-slim

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos da aplicação
COPY main.py .
COPY requirements.txt .

# Instala dependências
RUN pip install --no-cache-dir -r requirements.txt

# Define o comando padrão para rodar a aplicação
CMD ["python", "main.py"]
