variable "subscription_id" {
  description = "value of the Azure subscription ID.  Required for the AzureRM provider as of 4.0"
  type = string
}

variable "location" {
  description = "The Azure region to deploy resources to."
  type        = string
  default = "eastus"
}

variable "service_name" {
  description = "The name of the service to deploy"
  type        = string  
}

variable "tags" {
  description = "The tags to apply to all resources"
  type        = map(string)
  default = {}
}

variable "gh_username" {
  description = "value of the GitHub username.  Used for naming and tagging"
}
