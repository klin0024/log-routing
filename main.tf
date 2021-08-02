provider "google" {
  credentials = file(var.gcp_credentials)
  project = var.gcp_project
  region = var.gcp_region
}

resource "google_logging_project_sink" "log_routing" {
  
  count = length(var.log_routing_configs)

  name        = var.log_routing_configs[count.index].name
  #description = var.log_routing_configs[count.index].name
  destination = "pubsub.googleapis.com/projects/${var.log_routing_project}/topics/${var.log_routing_configs[count.index].topic}"
  filter      = var.log_routing_configs[count.index].filter

  unique_writer_identity = true

}