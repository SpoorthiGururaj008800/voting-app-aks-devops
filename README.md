🧩 Project: End-to-End DevOps CI/CD Implementation on Azure Kubernetes Services(AKS) with Terraform, GitOps and Monitoring

📘 Overview

This project demonstrates a complete DevOps lifecycle on Microsoft Azure, showcasing automation and orchestration skills for modern cloud-native applications.

Base Application: Example Voting App by Docker Samples (open-source microservices demo).

Learning Foundation: Inspired by Abhishek Veeramalla's DevOps tutorials for core workflow understanding.

Infrastructure as Code: Terraform modules for Azure (RG, AKS, ACR) with remote state in Azure Storage

CI/CD Automation: Azure DevOps YAML pipelines for build, push to ACR, and manifest updates

GitOps Delivery: ArgoCD configuration for sync, health monitoring

Monitoring Setup: Prometheus and Grafana deployment with node/pod metrics (app metrics troubleshooting documented)

Operational Focus: This isn't just a deployment demo—it includes real troubleshooting scenarios and documented failure recovery, proving job-ready DevOps skills.

**My Contributions:** 

All infrastructure, automation, and operational work in this repository:

**Infrastructure-as-Code (IaC)**  
Terraform modules for Azure Resource Group, AKS Cluster, and ACR with remote state in Azure Storage.

**CI/CD Automation**  
Azure DevOps YAML pipelines for each microservice (Vote, Result, Worker) to build Docker images, push to ACR, and auto-deploy to AKS.

**GitOps Integration**  
ArgoCD implementation for continuous delivery with declarative Git-based deployment and manifest version control.

**Container Orchestration**  
Kubernetes manifests deployment for all services (Vote, Result, Worker, Redis, Postgres) on AKS.

**Observability & Monitoring**  
Prometheus Operator for metrics scraping and Grafana dashboards for cluster/container health visualization.

**Security & Access Control**  
Azure service principals, Docker registry secrets, and AKS RBAC configuration for secure deployments.

**Troubleshooting & Operations**  
Resolved image-pull issues, service exposure problems, and Prometheus scraping errors with documented solutions.


Evidence:
- [Architecture Diagram](docs/screenshots/Project_workflow.png)
- [Screenshot Index](docs/screenshot-index.md)
- [Pipelines (YAML)](pipelines/)
- [Kubernetes Specs](k8s-specifications/)
- [Terraform Files](infra/)


🧱 Architecture Overview

![Architecture Diagram](docs/screenshots/Project-workflow.PNG)

1. Infrastructure Layer

Terraform provisions:

Azure Resource Group

Azure Kubernetes Service (AKS) Cluster

Azure Container Registry (ACR)

Backend state securely stored in Azure Storage Account.


2. CI/CD Layer

Azure Pipelines automates:

Building Docker images for vote, result, and worker apps.

Pushing images to ACR.

Updating Kubernetes manifests with new image tags.

ArgoCD provides GitOps:

Continuously syncs manifests from GitHub to AKS.


3. Monitoring Layer

Prometheus and Grafana deployed on AKS for observability.

System-level metrics (node, pod, exporter) are successfully scraped and visualized.

Prometheus <-> vote app “connection refused” issue highlights pending configuration and service discovery adjustments.


🔁 Workflow Summary

1. Developer commits code → GitHub repository.

2. Azure Pipelines triggers build, pushes images to ACR.

3. Updated manifests committed → ArgoCD detects and deploys to AKS.

4. Prometheus + Grafana monitor workloads in (partial) real time.



🧠 Tools & Technologies
           
------------+---------------------

1. IaC -  Terraform          
2. Cloud -  Microsoft Azure    
3. CI/CD  -  Azure Pipelines    
4. GitOps  -  ArgoCD             
5. Containers - Docker, Kubernetes 
6. Monitoring - Prometheus, Grafana
7. SCM -  GitHub             


📚 References

Base application: https://github.com/dockersamples/example-voting-app

Tutorial inspiration: Abhishek Veeramalla – DevOps Projects Series (YouTube)

Note: All infrastructure, automation, pipelines, and monitoring configuration in this repo are custom and original.



❓ FAQ

**Q: How do you detect configuration drift?**  
A: ArgoCD shows "OutOfSync" status with diff between desired (Git) and live (cluster) state.

**Q: How do you handle failed deployments?**  
A: Investigate with ArgoCD health/diff, check history, execute rollback, verify healthy state.

**Q: How are images tagged and promoted?**  
A: CI pipeline builds and tags images, pushes to ACR, updates manifests with new tags.

**Q: How is Terraform state secured?**  
A: Remote backend in Azure Storage Account with restricted access and state locking.

**Q: What's the monitoring status?**  
A: Node/pod metrics operational; app metrics pending (ServiceMonitor config + RBAC verification needed).


## 🎯 Key Learning Outcomes

- **Real-world DevOps workflows:** Hands-on experience with CI/CD pipelines, Infrastructure-as-Code, and GitOps methodologies
- **Azure cloud expertise:** Practical knowledge of AKS, ACR, resource management, and service integration  
- **Production troubleshooting:** Debugging authentication, connectivity, and monitoring issues typical in enterprise environments
- **Operational mindset:** Focus on stability, rollback procedures, and documentation for maintainable systems


🧩 Future Enhancements


1. Fix Prometheus “connection refused” for application metrics.

2. Implement Prometheus Alertmanager for automated alerts.

3. Extend Grafana dashboards for app-level performance metrics.




