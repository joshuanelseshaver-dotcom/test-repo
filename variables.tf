# Variables for Network and Kubernetes Cluster Configuration

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "iac-k8s"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "public_subnets" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "ssh_ingress_cidr_blocks" {
  description = "List of CIDR blocks allowed to connect to worker nodes via SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "k8s_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.28"
}

variable "worker_instance_types" {
  description = "Instance types for worker nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "worker_desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "worker_min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "worker_max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 5
}