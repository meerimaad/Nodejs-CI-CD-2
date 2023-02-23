resource "google_artifact_registry_repository" "my-repo" {
  provider      = google-beta
  location      = var.gke_config["region"]
  repository_id = "${var.nodejs-config["repository_id"]}"
  description   = "used to store nodejs images"
  format        = "DOCKER"
}