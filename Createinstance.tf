resource "aws_instance" "myfirstinstance" {
ami       ="ami-0b9064170e32bde34"
instance_type = "t2.micro"

tags={
 Name = "multipleinstance"
   }
}