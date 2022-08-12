##     Secrets                  ##
variable "project_name" {
  type        = string
  description = "Project Name"
}

variable "instance_name" {
  type        = string
  description = "Instance Name"
}

variable "sshuser" {
  type        = string
  description = "Username for logging in through SSH"
}

variable "sshpub" {
  type        = string
  description = "Public key for logging in through SSH"
}

variable "credentials_file" {
  type        = string
  description = "JSON file from Service Account Key creation"
  default     = "./creds.json"
}


##     Ubuntu Versions           ##

variable "ubuntu_min_1804" {
  type        = string
  description = "Ubuntu Minimal - 18.04 - Bionic - LTS"
  default     = "ubuntu-os-cloud/ubuntu-minimal-1804-lts"
}

variable "ubuntu_min_2004" {
  type        = string
  description = "Ubuntu Minimal - 20.04 - Focal - LTS"
  default     = "ubuntu-os-cloud/ubuntu-minimal-2004-lts"
}

variable "ubuntu_min_2204" {
  type        = string
  description = "Ubuntu Minimal - 22.04 - Jammy - LTS"
  default     = "ubuntu-os-cloud/ubuntu-minimal-2204-lts"
}


##      Free Tier               ##

variable "machine_type_free" {
  type        = string
  description = "Free VM type"
  default     = "e2-micro"
}

variable "zone_free_oregon" {
  type        = string
  description = "Free Zone Oregon"
  default     = "us-west1-c"
}

variable "zone_free_iowa" {
  type        = string
  description = "Free Zone Iowa"
  default     = "us-central1-c"
}

variable "zone_free_south_carolina" {
  type        = string
  description = "Free Zone South Carolina"
  default     = "us-east1-c"
}

variable "disk_size_free" {
  type        = number
  description = "Maximum allowed hard drive space in GB"
  default     = 30
}

variable "disk_type_free" {
  type        = string
  description = "Allowed type of persistence"
  default     = "pd-standard"
}
