
# 🧪 CI/CD Pipeline with Azure DevOps, AKS, and ArgoCD

This project demonstrates end-to-end implementation of a CI/CD pipeline using Azure DevOps for CI and ArgoCD for CD to an AKS cluster. It includes my personal handwritten notes to showcase how I understood and built it.

---

## 📌 Project Overview

- **CI**: Azure DevOps Pipeline  
- **CD**: ArgoCD deployed in AKS  
- **Orchestration**: Kubernetes  
- **Infrastructure**: Azure VMs, AKS, Docker, GitHub

---

## ⚙️ Architecture

```
GitHub Repo → Azure DevOps CI Pipeline → Docker Image → Azure Container Registry (ACR)  
→ ArgoCD in AKS → Kubernetes Deployment → App Live on Cluster
```

---

## 🚀 Features Implemented

- Path-based trigger for specific code folders
- Build and push Docker image to ACR
- Agent VM for executing pipeline (due to free tier limitations)
- Manual VM setup with Docker installation
- ArgoCD setup in AKS
- GitOps-based continuous deployment

---

## 🧠 My Learning Journey (Handwritten Notes)

These are raw notes I made while implementing the pipeline from scratch. I’m including them here for authenticity and to help others who like to learn visually.

[DocScanner 16-May-2025 01-41 PM.pdf](https://github.com/user-attachments/files/20255250/DocScanner.16-May-2025.01-41.PM.pdf)

---

## 💻 Tech Stack

- Azure DevOps Pipelines
- GitHub
- Docker
- Azure VM (Ubuntu)
- Azure Container Registry (ACR)
- Azure Kubernetes Service (AKS)
- ArgoCD
- Shell scripting

---



## 📎 References

- [Azure Pipelines Documentation](https://learn.microsoft.com/en-us/azure/devops/pipelines/)
- [ArgoCD Documentation](https://argo-cd.readthedocs.io/)
- https://github.com/iam-veeramalla/Azure-zero-to-hero/tree/main

---

## 🙋‍♀️ About Me

I’m Spoorthi, a DevOps enthusiast transitioning from an Azure Cloud background.  
You can connect with me on [LinkedIn](https://www.linkedin.com/in/spoorthi-gururaj-3362b416b/) or explore more on [GitHub](https://github.com/SpoorthiGururaj008800).
