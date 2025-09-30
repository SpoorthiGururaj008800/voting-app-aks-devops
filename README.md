## Problem Statement

Modern cloud-native applications require automated, reliable CI/CD pipelines to accelerate delivery and maintain high availability. This project addresses the challenge of building a scalable Voting App on AKS with a production-like workflow using industry-standard tools for infrastructure provisioning, continuous integration, and GitOps continuous delivery.
It demonstrates how to leverage Azure DevOps, Terraform, and ArgoCD to create end-to-end automation from code commit to live deployment, reducing manual errors and deployment times.


## Project Overview

This Voting App project showcases the implementation of a modern cloud-native CI/CD pipeline and GitOps deployment workflow. Using Terraform, Azure DevOps, ArgoCD, and Kubernetes on AKS, it demonstrates how to automate infrastructure provisioning, continuous integration, and reliable app delivery.
The project emphasizes container orchestration, infrastructure as code, GitOps best practices, and monitoring strategy with Prometheus and Grafana.

## My Contributions & Learnings

- Designed and implemented Terraform scripts to provision Azure infrastructure including AKS, Storage, and Container Registry.  
- Developed CI pipelines in Azure DevOps to build and push Docker images efficiently using a self-hosted Azure VM agent.  
- Configured ArgoCD for declarative Kubernetes deployments using GitOps for automated and reliable app delivery.  
- Troubleshot deployment and connectivity issues between Kubernetes services (vote, worker, result, redis, postgres).  
- Implemented monitoring with Prometheus and Grafana to observe application and cluster health.  
- Gained hands-on experience with Helm charts, Git branching strategies, and Docker container best practices.  
- Documented the process extensively with handwritten notes for personal learning and sharing.

## Challenges & Troubleshooting

Managing stateful services like Redis and Postgres within AKS required careful configuration of persistent volumes and service discovery.

Encountered and resolved Docker image build issues on the self-hosted Azure VM due to BuildKit incompatibilities by adjusting Docker daemon settings.

Addressed inter-pod communication failures by setting correct environment variables and Kubernetes service types (ClusterIP, LoadBalancer).

Implemented Prometheus ServiceMonitors to correctly scrape custom app metrics, debugging label selectors and endpoint path configurations.

Dealt with Azure-specific resource quotas and VM SKU limitations through Terraform variable customization and Azure portal checks.

Ensured secure secret management and avoided storing sensitive information in plain text within Kubernetes manifests.

Resolved critical Kubernetes YAML indentation errors in infrastructure manifests and debugged a "connection refused" error during the integration of the Prometheus monitoring service.

Overcame fundamental Git file tracking issues related to special characters and empty folders, along with multiple YAML configuration bugs needed for applying manifests to the AKS cluster.

Troubleshot both low-level configuration flaws (YAML) and high-level observability challenges (Prometheus) to ensure continuous integration was successful across all services.



## Prometheus Vote App Scrape Failure

During deployment, Prometheus was unable to successfully scrape the Vote App metrics endpoint, resulting in target health status showing as DOWN with a "connection refused" error on port 8080.

The Vote App, implemented in Python Flask, may not have a dedicated /metrics endpoint or may not expose it on the expected port.

Kubernetes Service or Prometheus ServiceMonitor resource configurations may be targeting the wrong port or endpoint path.

Despite this, Redis and Postgres exporters are successfully scraped, indicating the Prometheus stack itself is healthy.

## Next Steps for Resolution:

Confirm and correct the Kubernetes Service and ServiceMonitor port and selector settings to match the metrics endpoint.

Manually test through kubectl port-forward and curl/Wget to ensure the metrics endpoint is reachable.

Update Kubernetes manifests and redeploy once the issue is fixed.




## Repository Structure

- `infra/` — Terraform code for provisioning Azure resources like Resource Group, AKS, ACR, and Blob Storage for remote state  
- `pipelines/` — Azure DevOps pipeline YAML files for infrastructure and app components  
- `k8s-specifications/` — Kubernetes manifests for deployments, services, and monitoring ServiceMonitors  
- `docs/screenshots/` — Images documenting pipeline runs, ArgoCD sync status, and monitoring dashboards



## Architecture Diagram

![End-to-end CI/CD Pipeline](docs/screenshots/votingapp_cicd_pipeline_diagram.png)

This diagram depicts the full workflow from the GitHub repository through Azure DevOps CI pipelines, Docker image builds and push to Azure Container Registry, ArgoCD GitOps synchronization with the AKS cluster, and deployment of the vote, worker, result, Redis, and Postgres services, along with monitoring components.


