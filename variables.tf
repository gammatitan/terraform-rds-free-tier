# Required Parameters
## You must provide a value for each of these parameters.
## Given these are credentials, security of the values should be considered.
variable "username" {
  description = "Master username of the DB"
  type        = string
}

variable "password" {
  description = "Master password of the DB"
  type        = string
}

variable "name" {
  description = "Name of the database"
  type        = string
  default     = "terraform-db"
}

# variable "ip_address" {
#   description = "Your ip address"
#   type        = string
# }

# Optional Parameters
## These parameters have reasonable defaults.
variable "provider_region" {
  type        = string
  description = "The AWS region to deploy to"
  default     = "eu-west-2"
}

variable "database_name" {
  description = "Name of the database to be created. Must begin with a letter and contain only alphanumeric characters"
  type        = string
  default     = "db"
}

variable "engine_name" {
  description = "Name of the database engine"
  type        = string
  default     = "mysql"
}

variable "family" {
  description = "Family of the database"
  type        = string
  default     = "mysql5.7"
}

variable "port" {
  description = "Port which the database should run on"
  type        = number
  default     = 3306
}

variable "major_engine_version" {
  description = "MAJOR.MINOR version of the DB engine"
  type        = string
  default     = "5.7"
}

variable "engine_version" {
  description = "Version of the database to be launched"
  default     = "5.7.21"
  type        = string
}

variable "allocated_storage" {
  description = "Disk space to be allocated to the DB instance"
  type        = number
  default     = 5
}

variable "license_model" {
  description = "License model of the DB instance"
  type        = string
  default     = "general-public-license"
}

variable "instance_class" {
  description = "Instance class to be used to run the database"
  type        = string
  default     = "db.t2.micro"
}
