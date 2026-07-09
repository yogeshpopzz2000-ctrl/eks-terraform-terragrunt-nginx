variable "region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project Name"
  type        = string
  default     = "eks-demo"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}