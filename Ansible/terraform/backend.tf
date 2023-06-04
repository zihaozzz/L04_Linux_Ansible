terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-southeast-2"
}


terraform {
    backend "s3" {
        encrypt              = true
        bucket               = "tfstate-william" //change to your own
        region               = "ap-southeast-2"
        key                  = "ansible-demo-tf.tfstate" //change to your own
    }
}
