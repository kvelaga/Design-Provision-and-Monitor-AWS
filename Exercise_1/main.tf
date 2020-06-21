provider "aws" {
    
    access_key = "AKIAI4Q4PL4EADOKQ42Q"
    secret_key = "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"
    region = "us-east-1"
}
resource "aws_instance" "UdacityT2" {
  ami           = "ami-09d95fab7fff3776c"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-04fdfabfbc0df9217"
  tags = {
    Name = "Udacity T2"
  }
}

 #resource "aws_instance" "UdacityM4" {
  # ami           = "ami-09d95fab7fff3776c"
   #count         = "2"
  # instance_type = "m4.large"
  # subnet_id     = "subnet-04fdfabfbc0df9217"
  # tags = {
   #  Name = "Udacity M4"
  #}
 #}