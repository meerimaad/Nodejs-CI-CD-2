terraform {
  backend "gcs" {
    bucket = "terraform-project-alpkocer"
    prefix = "/dev/mnt/lucardcoder/Nodejs-CI-CD/2.app_setup"
  }
}
