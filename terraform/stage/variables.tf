variable project {
  description = "Project ID"
 default = "terraproject-179615"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
  default = "~/.ssh/appuser.pub"
}

variable privat_key_path {
  description = "Path to the private key used for scripts"
  default = "~/.ssh/appuser"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
