module grafana {
    source = "./module"
    deployment_name = "grafana"
    namespace  = "grafana"
    repository = "https://grafana.github.io/helm-charts"
    chart      = "grafana"
}   