variable "server_port" {
  description = "The port that the server will use for HTTP requests"
  default = 8080
}

variable "elb_port" {
  default = 80
}