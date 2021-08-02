output "serviceaccount" {
  value = zipmap(google_logging_project_sink.log_routing.*.name,google_logging_project_sink.log_routing.*.writer_identity)
}