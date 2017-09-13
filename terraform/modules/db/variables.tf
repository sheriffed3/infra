variable public_key_path {
  description = "Path to the public key used to connect to instance"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable db_name {
  description = "Name for new instance"
  default     = "reddit-db-base"
}

variable db_machine_type {
  description = "Type of instance"
  default     = "g1-small"
}

variable db_zone {
  description = "Zone"
  default     = "europe-west1-c"
}

variable db_tags {
  description = "Instance tags"
  default     = ["reddit-app"]
}
