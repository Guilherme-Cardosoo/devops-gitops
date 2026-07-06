# DevOps GitOps

Repositório responsável pela infraestrutura e implantação da aplicação utilizando conceitos de DevOps e GitOps.

## Objetivo

Este repositório centraliza toda a infraestrutura da aplicação, incluindo a criação dos recursos na AWS, os manifests Kubernetes e os arquivos necessários para automatizar o processo de deploy.

## Tecnologias Utilizadas

- Terraform
- Kubernetes
- Docker
- AWS EC2
- PostgreSQL
- FastAPI
- Git
- GitHub

## Infraestrutura

A infraestrutura é provisionada utilizando Terraform na AWS.

Recursos criados:

- Instâncias EC2
- Security Group
- Rede utilizando a VPC padrão da AWS
- Cluster preparado para execução do Kubernetes

## Executando o Terraform

Inicializar o projeto:

```bash
terraform init
```

Validar a configuração:

```bash
terraform validate
```

Visualizar o plano de execução:

```bash
terraform plan
```

Criar a infraestrutura:

```bash
terraform apply
```

Remover toda a infraestrutura:

```bash
terraform destroy
```

## Kubernetes

Após a criação da infraestrutura, os manifests podem ser aplicados utilizando:

Criar o namespace:

```bash
kubectl apply -f kubernetes/namespace.yaml
```

Implantar o PostgreSQL:

```bash
kubectl apply -f kubernetes/postgres/
```

Implantar o Backend:

```bash
kubectl apply -f kubernetes/backend/
```

Implantar o Frontend:

```bash
kubectl apply -f kubernetes/frontend/
```

## Docker Hub

As imagens utilizadas no projeto estão publicadas no Docker Hub.

### Backend

```
guiihermecardoso/devops-backend:latest
```

### Frontend

```
guiihermecardoso/devops-frontend:latest
```

## GitOps

Este repositório segue a abordagem GitOps, onde toda alteração na infraestrutura e nos manifests Kubernetes é versionada através do Git, permitindo rastreabilidade e controle das alterações.

## Organização do Projeto

- Terraform responsável pelo provisionamento da infraestrutura.
- Kubernetes responsável pela orquestração dos containers.
- Docker utilizado para empacotamento das aplicações.
- GitHub utilizado para versionamento do código.

## Autor

Guilherme Cardoso

Projeto desenvolvido como trabalho final da disciplina de DevOps.