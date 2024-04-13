variable "chart" {
  type        = string
  description = "The name of the chart you wish to install, i.e. nginx, apache"
  default     = "nginx"
}

variable "repository" {
  type        = string
  description = "The respository that hosts the chart, i.e. oci://registry-1.docker.io/bitnamicharts"
  default     = "oci://registry-1.docker.io/bitnamicharts"
}

variable "chart_version" {
  type        = string
  description = "The chart version that you wish to deploy"
  default     = "15.14.0"
}
