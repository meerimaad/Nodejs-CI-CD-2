module "nodejs" {
  source    = "../3.terraform-helm-local"
  deployment_name      = "nodejs"
  deployment_namespace = "team2"
  deployment_path     = "../nodejs"
    values_yaml = <<EOF
    EOF
}