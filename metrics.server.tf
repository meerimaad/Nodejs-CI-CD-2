module metrics-server {
    source = "./module"
    deployment_name = "metrics-server"
    namespace  = "kube-system"
    repository = "https://prometheus-community.github.io/helm-charts"
    chart      = "kube-state-metrics"
}

 