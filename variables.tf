variable "billing_account_id" {
  description = "Billing account id used as to create projects."
  type        = string
}

variable "folder_id"{}

variable "environments" {
  description = "Environment short names."
  type        = set(string)
}

variable "gcs_location" {
  description = "GCS bucket location."
  type        = string
  default     = "EU"
}

variable "organization_id" {
  description = "Organization id in organizations/nnnnnnnn format."
  type        = string
}

variable "prefix" {
  description = "Prefix used for resources that need unique names."
  type        = string
}

variable "root_node" {
  description = "Root node for the new hierarchy, either 'organizations/org_id' or 'folders/folder_id'."
  type        = string
}

variable "project_services" {
  description = "Service APIs enabled by default in new projects."
  type        = list(string)
  default = [
    "container.googleapis.com",
    "stackdriver.googleapis.com",
  ]
}
