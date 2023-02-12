module "k8s-namespace" {
    source = "../modules/terraform-k8s-namespace"
    labels = {
        app = "team2" #we can change this label name
    }
    namespace_name = "team2" #we can change namespace name
}