# Deploy NGINX on AWS EKS using Terraform & Terragrunt

## 📖 Project Overview

This project demonstrates how to provision an Amazon EKS (Elastic Kubernetes Service) cluster using **Terraform** and **Terragrunt**, and deploy an **NGINX application** exposed through an **AWS Classic Load Balancer**.

The infrastructure is provisioned as Infrastructure as Code (IaC), and Kubernetes is used to manage the application deployment.

---

## 🚀 Technologies Used

- Amazon Web Services (AWS)
- Amazon EKS
- Terraform
- Terragrunt
- Kubernetes
- kubectl
- AWS CLI
- Git & GitHub

---

## 🏗️ Architecture

```text
                    Internet
                        │
                        ▼
           AWS Classic Load Balancer
                        │
                        ▼
        Kubernetes Service (LoadBalancer)
                        │
                        ▼
              NGINX Deployment (2 Pods)
                        │
                        ▼
          Amazon EKS Managed Node Group
                        │
                        ▼
                 Amazon EKS Cluster
                        │
                        ▼
                         VPC
```

---

## 📂 Project Structure

```text
eks-terragrunt/
│
├── .gitignore
├── README.md
│
├── kubernetes/
│   ├── deployment.yaml
│   └── service.yaml
│
├── live/
│   ├── terragrunt.hcl
│   └── dev/
│       ├── eks/
│       │   ├── terragrunt.hcl
│       │   └── .terraform.lock.hcl
│       │
│       └── vpc/
│           ├── terragrunt.hcl
│           └── .terraform.lock.hcl
│
└── terraform/
    └── modules/
        ├── eks/
        │   ├── main.tf
        │   ├── variables.tf
        │   ├── outputs.tf
        │   └── versions.tf
        │
        └── vpc/
            ├── main.tf
            ├── variables.tf
            ├── outputs.tf
            └── versions.tf
```

---

## ☁️ Infrastructure Provisioned

- Amazon VPC
- Public Subnets
- Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Amazon EKS Cluster
- Amazon EKS Managed Node Group
- Amazon S3 Backend for Terraform State
- DynamoDB Table for State Locking

---

## ☸️ Kubernetes Resources

### Deployment

- NGINX Deployment
- 2 Replicas

### Service

- Type: LoadBalancer
- Exposes the application through AWS Classic Load Balancer

---

## ⚙️ Prerequisites

- AWS CLI
- Terraform
- Terragrunt
- kubectl
- Git

---

## 🚀 Deployment Steps

### Clone Repository

```bash
git clone https://github.com/<your-github-username>/eks-terraform-terragrunt-nginx.git
cd eks-terraform-terragrunt-nginx
```

### Deploy Infrastructure

```bash
cd live
terragrunt run --all apply
```

### Configure kubectl

```bash
aws eks update-kubeconfig --region ap-south-1 --name demo-eks
```

### Verify Cluster

```bash
kubectl get nodes
```

### Deploy NGINX

```bash
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
```

### Verify Deployment

```bash
kubectl get pods
kubectl get svc
```

---

## 📊 Verification

Verify the following:

```bash
kubectl get nodes
kubectl get pods
kubectl get deployments
kubectl get svc
```

Open the Load Balancer DNS in your browser.

Expected output:

```
Welcome to nginx!
```

---

## 📸 Screenshots

Add screenshots of:

- Amazon EKS Cluster
- Worker Nodes
- kubectl get nodes
- kubectl get pods
- kubectl get svc
- AWS Load Balancer
- NGINX Welcome Page

---

## 📚 Learning Outcomes

- Infrastructure as Code using Terraform
- Terragrunt Module Management
- Remote Terraform State using S3
- State Locking using DynamoDB
- Amazon EKS Cluster Provisioning
- Kubernetes Deployment and Services
- AWS Load Balancer Integration
- GitHub Project Management

---

## 👨‍💻 Author

**Yogesh**

GitHub: https://github.com/<your-github-username>