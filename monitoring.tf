resource "google_monitoring_uptime_check_config" "http" {
  display_name = "http://${var.service_name}.${var.google_domain_name}"
  timeout      = "60s"

  http_check {
    path         = "/"
    port         = "80"
    use_ssl      = false
  }

  monitored_resource {
    type = "uptime_url"
    labels = {
      project_id = var.PROJECT_ID
      host       = "${var.service_name}.${var.google_domain_name}"
    }
  }
}
