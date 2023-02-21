terraform {
  backend "gcs" {
    bucket = "terraform-project-valiullina89"
    prefix = "/dev/mnt/Valiullina/Nodejs-CI-CD/2.tools-setup"
  }
}
