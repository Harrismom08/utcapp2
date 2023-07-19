variable "region" {
  default = "us-east-1" 
  }
variable "vpc_name" {
  default = "utc-app1"

}
variable "cidrblock" {
  default = "10.0.0.0/16"
}

variable "sg_name" {
 default = "webserver-sg"
 
}