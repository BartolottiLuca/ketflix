# resource "helm_release" "kuberentes_dashboard" {
#   count = var.monitoring_enabled ? 1 : 0

#   name       = "kuberentes-dashboard"
#   repository = "https://kubernetes.github.io/dashboard"
#   chart      = "kubernetes-dashboard"
#   namespace  = kubernetes_namespace.kube_monitoring[0].metadata[0].name
# }


resource "kubernetes_namespace" "kube_monitoring" {
  count = var.monitoring_enabled ? 1 : 0

  metadata {
    name = "kube-monitoring"
  }
}
