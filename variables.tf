variable "gcp_credentials" {
  type = string
  default = ""
}
variable "gcp_project" {
  type = string
}
variable "gcp_region" {
  type = string
}
variable "log_routing_configs" {
  type = list
}
variable "log_routing_project" {
  type = string
}