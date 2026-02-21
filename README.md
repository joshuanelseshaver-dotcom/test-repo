# Kubernetes Network Infrastructure as Code

This repository contains Terraform configurations to deploy a complete network infrastructure and Kubernetes cluster.

## Components

- Virtual Private Cloud (VPC) with public and private subnets
- Internet Gateway and NAT Gateway
- Route tables and security groups
- Managed Kubernetes cluster (EKS/AKS/GKE)
- Node groups for worker nodes

## Prerequisites

- Terraform v1.0+
- Appropriate cloud provider CLI tools installed and configured
- Sufficient permissions to create cloud resources

## Getting Started

1. Clone this repository
2. Initialize Terraform: `terraform init`
3. Plan the deployment: `terraform plan`
4. Apply the configuration: `terraform apply`

## Architecture

The infrastructure follows best practices for production deployments:
- Isolated private subnets for workloads
- Public subnets for load balancers and gateways
- Proper security group configurations
- Highly available control plane for Kubernetes