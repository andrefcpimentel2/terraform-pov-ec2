provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

resource "aws_instance" "poc" {

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.poc_subnet_id

  tags = {
    Name       = "${var.namespace}-tfe"
    owner      = var.owner
    created-by = var.created-by
  }
}



