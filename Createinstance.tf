resource "aws_instance" "myfirstinstance" {
ami       ="ami-0b9064170e32bde34"
instance_type = "t2.micro"

user_data = <<-EOF
            #!/bin/bash
            echo "Hello, World"> index.html
            nohup busybox httpd -f -p 8080 &
 
 resource   "aws_security_group" "instance"{ 
     name = "multipleinstance"

     ingress {
         from_port     = 8080
         to_port       = 8080
         protocol      = "tcp"
         cidr_blocks   = ["0.0.0.0/0"]
     } 
 }

tags={
 Name = "multipleinstance"
   }
}