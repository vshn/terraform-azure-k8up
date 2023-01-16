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
