module "k8s-namespace" {
    source = "../modules/terraform-k8s-namespace"
    labels = {
        app = "team2-nodejs" 
    }
    namespace_name = "${var.nodejs-config["namespace_name"]}"
}