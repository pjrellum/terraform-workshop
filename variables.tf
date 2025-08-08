variable "environment" {
  description = "Deployment environment (dev, tst, acc, prd)"
  type        = string
  default     = "dev"
  
  validation {
    condition     = contains(["dev", "tst", "acc", "prd"], var.environment)
    error_message = "Environment moet een van de volgende waarden zijn: dev, tst, acc, prd."
  }
}

variable "student_name" {
  description = "Naam van de student (gebruikt voor resource naming)"
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9]{3,8}$", var.student_name))
    error_message = "Student naam moet tussen 3-8 karakters zijn, alleen lowercase letters en cijfers."
  }
}

variable "location" {
  description = "Azure regio waar resources worden aangemaakt"
  type        = string
  default     = "West Europe"
}

variable "tags" {
  description = "Tags die op alle resources worden toegepast"
  type        = map(string)
  default = {
    Environment = "Workshop"
    Project     = "Terraform-MCT"
    CreatedBy   = "TerraformWorkshop"
  }
}
