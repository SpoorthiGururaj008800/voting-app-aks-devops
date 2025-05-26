# 🧪 CI/CD Pipeline with Azure DevOps, AKS, and ArgoCD

This project demonstrates an end-to-end implementation of a CI/CD pipeline using **Azure DevOps** for continuous integration and **ArgoCD** for GitOps-based continuous delivery into an **AKS (Azure Kubernetes Service)** cluster.

---

## 📌 Overview

- **CI Tool**: Azure DevOps Pipelines
- **CD Tool**: ArgoCD
- **Containerization**: Docker
- **Orchestration**: Kubernetes (AKS)
- **Infra**: Azure VM, Azure Container Registry (ACR), GitHub
- **Personal Learning**: Includes my handwritten implementation notes ✍️

---

## ⚙️ Architecture

GitHub Repo 
   ↓
Azure DevOps CI Pipeline
   ↓
Docker Image
   ↓
Azure Container Registry (ACR)
   ↓
ArgoCD running in AKS
   ↓
Kubernetes Deployment
   ↓
Live App on AKS Cluster

---

 🚀Features Implemented :
 
🔁 Path-based triggers for specific folders (vote, result)

🐳 Docker image build and push to ACR

🖥️ Used a manually created Azure VM as build agent (due to parallelism limitations)

⚙️ Docker setup on Azure VM using shell script

☸️ ArgoCD installation and setup in AKS for GitOps CD

🔄 Continuous deployment from GitHub repo to AKS via ArgoCD

---

## 🧠 My Learning Journey (Handwritten Notes)

These are raw notes I made while implementing the pipeline from scratch. I’m including them here for authenticity and to help others who like to learn visually.

[DocScanner 16-May-2025 01-41 PM.pdf](https://github.com/user-attachments/files/20255250/DocScanner.16-May-2025.01-41.PM.pdf)

---

💻 Tech Stack

Azure DevOps

GitHub

Docker

Azure VM (Ubuntu)

Azure Container Registry (ACR)

Azure Kubernetes Service (AKS)

ArgoCD

Bash/Shell scripting

---

📎 References & Credits

https://learn.microsoft.com/en-us/azure/devops/pipelines/?view=azure-devops

https://argo-cd.readthedocs.io/en/stable/

https://github.com/iam-veeramalla/Azure-zero-to-hero/tree/main


---

## 🙋‍♀️ About Me

I’m Spoorthi, a DevOps enthusiast transitioning from an Azure Cloud background.  
You can connect with me on [LinkedIn](https://www.linkedin.com/in/spoorthi-gururaj-3362b416b/) or explore more on [GitHub](https://github.com/SpoorthiGururaj008800).
