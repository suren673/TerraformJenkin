variable "gcp_project" {
  type        = string
  description = "GCP project"
  //default = "crucial-strata-311604"
}

variable "gcp_zone" {
  type        = string
  description = "GCP zone"
  //default = "us-central1-a"
}

variable "gcp_region" {
  type        = string
  description = "GCP region"
  //default =  "us-central1"
}

variable "gcp_instancename" {
  type        = string
  description = "vm instance name"
  //default =  "variablevminstance"
}

variable "gcp_machinetype" {
  type        = string
  description = "vm machine name"
  //default =  "e2-micro"
}

variable "gcp_auth_file" {
  type        = string
  description = "authentication file"
}

variable "bucket_name" {
  type    = string
  default = "the name of the cloud storage bucket"
}

variable "storage_class" {
  type    = string
  default = "the name of the storage class"
}