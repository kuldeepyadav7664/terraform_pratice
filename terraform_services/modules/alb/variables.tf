variable "name" {
  type = string
}
variable "internal" {
  type = bool
}
variable "load_balancer_type" {
  type = string
}
variable "subnets" {
  type = list(string)
}