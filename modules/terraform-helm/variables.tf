variable "deployment_name" {
  type        = string
  description = "- (Required) Chart release name."
}

variable "deployment_namespace" {
  type        = string
  default     = "default"
  description = "- (Optional) Namespace where to deploy resources to."
}

variable "repository" {
  type        = string
  description = "- (Required) Path for the repository."
}

variable "chart" {
  type        = string
  description = "- (Required) Path for the Chart."
}

