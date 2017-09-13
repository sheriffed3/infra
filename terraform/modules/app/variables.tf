variable public_key_path {
  description = "Path to the public key used to connect to instance"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable app_name {
  description = "Name for new instance"
  default     = "reddit-app-base"
}

variable app_machine_type {
  description = "Type of instance"
  default     = "g1-small"
}

variable app_zone {
  description = "Zone"
  default     = "europe-west1-c"
}

variable app_tags {
  description = "Instance tags"
  default     = ["reddit-app"]
}
