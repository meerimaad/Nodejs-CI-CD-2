module "grafana" {
  source             = "../modules/monitoring"
  google_domain_name = var.google_domain_name
  PROJECT_ID         = var.PROJECT_ID
  service_name       = "grafana" #var.grafana-config["deployment_name"]
}
module "prometheus" {
  source             = "../modules/monitoring"
  google_domain_name = var.google_domain_name
  PROJECT_ID         = var.PROJECT_ID
  service_name       = "prometheus" #var.prometheus-config["deployment_name"]
}

module "nodejs" {
  source             = "../modules/monitoring"
  google_domain_name = var.google_domain_name
  PROJECT_ID         = var.PROJECT_ID
  service_name       = "nodejs" #var.prometheus-config["deployment_name"]
}