variable "storage_account_name" {
  description = "The name of the storage account (must be unique within Azure)"
  type        = string
}

variable "resource_group" {
  description = "Resource group this storage account should belong to"
  type = object({
    name     = string
    location = string
  })
}

variable "account_kind" {
  description = "Defines the Kind of account."
  type        = string
  default     = "StorageV2"
}
