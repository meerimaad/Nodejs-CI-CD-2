module prometheus {
    source = "./module"
    deployment_name = "prometheus"
    namespace  = "prometheus"
    repository = "https://prometheus-community.github.io/helm-charts"
    chart      = "prometheus"
}