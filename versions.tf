terraform {
  cloud {
    organization = "kyndryl-terraform-learning"

    workspaces {
      name = "terraform-GCP-test"
    }
  }

  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 5.0"

    }
  }
}


