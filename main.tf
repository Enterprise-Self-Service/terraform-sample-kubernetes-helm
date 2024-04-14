resource "helm_release" "this" {
  name       = var.chart
  repository = var.repository
  chart      = var.chart
  version    = var.chart_version
}

data "kubernetes_service" "this" {
  depends_on = [helm_release.this]
  metadata {
    name = var.chart
  }
}

output "kubernates_service" {
  value = data.kubernetes_service.this
}