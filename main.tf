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

output "service_endpoint" {
  value = data.kubernetes_service.this.status != null ? "http://${data.kubernetes_service.this.status.0.load_balancer.0.ingress.0.ip}" : null
}