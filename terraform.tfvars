gcp_credentials = "YOUR_CREDENTIAL_PATH"
gcp_project = "gcp-expert-sandbox-allen"
gcp_region = "us-central1"

log_routing_project = "gcp-expert-sandbox-allen"
log_routing_configs = [
  { "name": "activity", "topic": "activity", "filter": "logName='projects/gcp-expert-sandbox-allen/logs/cloudaudit.googleapis.com%2Factivity'" }
]
