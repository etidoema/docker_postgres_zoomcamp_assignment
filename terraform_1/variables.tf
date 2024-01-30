variable "credentials" {
  description = "My Credentials"
  default     = "./keys/my-creds.json"
}

variable "project" {
  description = "Project"
  default     = "ultimate-aspect-410714"
}

variable "region" {
  description = "Region"
  default     = "us-central1"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "ny_taxi_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "ultimate-aspect-410714-terra-bucket"
}

variable "google_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"

}