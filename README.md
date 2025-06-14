# Deploy de Aplicação em Kubernetes (Minikube)

Este projeto demonstra como realizar o deploy de uma aplicação Python containerizada em um cluster Kubernetes local utilizando o Minikube. Ele abrange a criação de recursos Kubernetes como Namespaces, Deployments, Services, Ingress, ConfigMaps e Secrets, além de incluir testes automatizados e imagens ilustrativas.

## Etapas de Execução

1. Inicie o Minikube:
   ```bash
   minikube start
   ```

2. Aplique os manifests Kubernetes:
   ```bash
   kubectl apply -f k8s/
   ```

3. Construa e envie a imagem Docker (exemplo com Minikube local):
   ```bash
   eval $(minikube docker-env)
   docker build -t app-demo:latest ./app
   ```

4. Acesse a aplicação via NodePort ou configure DNS local para `app-demo.local` e use Ingress.

5. Execute o teste da aplicação:
   ```bash
   ./testes/test_app.sh
   ```

## Tecnologias Utilizadas

- Kubernetes
- Minikube
- Docker
- Python + Flask
- Bash

