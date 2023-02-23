module "nodejs-app" {
  source    = "../terraform-helm"
  deployment_name      = "${var.nodejs-config["deployment_name"]}"
  deployment_namespace = "${var.nodejs-config["namespace_name"]}"
  deployment_path     = "../nodejs"
    values_yaml = <<EOF
image:
  repository: "${var.nodejs-config["image-repository"]}"
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "${var.nodejs-config["tag"]}"
ingress:
  enabled: true
  className: "nginx"
  annotations: 
    cert-manager.io/cluster-issuer: letsencrypt-prod
  hosts:
    - host: "${var.nodejs-config["host"]}"
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls:
  - secretName: chart-example-tls
    hosts:
      - "${var.nodejs-config["host"]}"
    EOF
}


variable nodejs-config {
  type = map
}