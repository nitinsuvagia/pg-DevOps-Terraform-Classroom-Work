provider "aws" {
  region     = "us-east-1" 
  access_key = " your_aws_access_key_here 2" 
  secret_key = "your_aws_secret_key_here" 
  token = “your_aws_token_here” 

}

resource "aws_instance" "web" {
	ami           = "ami-003634241a8fcdec0"
	instance_type = "t2.micro"
	key_name      = "your-key-name"

	tags = {
		Name = "Tuts test"
	}

	connection {
		type        = "ssh"
		host        = self.public_ip
		user        = "ubuntu"
		private_key = file("path/your-key-file-name.pem")
		# Default timeout is 5 minutes
		timeout     = "4m"
	}

	provisioner "remote-exec" {
		inline = [
			"touch /home/ubuntu/tuts-remote-exec.txt"
		]
	}
}
