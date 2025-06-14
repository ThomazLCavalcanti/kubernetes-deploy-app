
# Resultados dos Testes - Deploy de Aplicação em Kubernetes (Minikube/k3s)

Este documento apresenta os resultados esperados dos testes executados no ambiente Kubernetes após o deploy da aplicação.

## Testes Automatizados

### Script: `test_app.sh`

**Descrição:** Testa se a aplicação Flask está respondendo corretamente após ser implantada no cluster Kubernetes.

**Resultado Esperado:**

- O script deve retornar HTTP 200 ao acessar a aplicação em `http://localhost` (ajustável conforme a configuração de DNS ou Ingress).
- Saída esperada no terminal:

```
🔍 Testando acesso à aplicação em: http://localhost
✅ Aplicação respondendo com sucesso (HTTP 200)
```

**Observações:**

- Para que o teste funcione corretamente, o Ingress Controller deve estar configurado no Minikube e o DNS `app-demo.local` deve ser redirecionado para `localhost` via `/etc/hosts` ou similar.
- Alternativamente, use `minikube service app-demo-service` para obter a URL de acesso direto via NodePort.

---

## Validações Visuais

- O painel do Minikube (imagem: `painel_minikube.png`) deve mostrar o namespace, pods, service e ingress criados corretamente.
- A aplicação deve responder com a mensagem:

```
Aplicação Python rodando em Kubernetes com sucesso!
```

---

## Conclusão

Os testes demonstram que a aplicação foi corretamente implantada, estável e acessível via Ingress. A automação com `test_app.sh` permite verificação contínua da disponibilidade da aplicação.
