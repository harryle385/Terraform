variable "REGION" {
  type        = string
  default     = "ap-southeast-1"
  description = "Singapore"
}
variable "AMIasREGION" {
  type        = map(any)
  default     = {
    ap-southeast-1    =   "ami-02ee763250491e04a"
    ap-southeast-2    =   "ami-0c802847a7dd848c0"
  }
  description = "description"
}
