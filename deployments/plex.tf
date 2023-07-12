# helm repo add kube-plex https://ressu.github.io/kube-plex

# helm upgrade plex kube-plex \
#     --namespace plex \
#     --install \
#     --set claimToken=[insert claim token here] \
#     --set persistence.data.claimName=[existing-pms-data-pvc] \
#     --set persistence.transcode.enabled=true \
#     --set persistence.transcode.claimName=[shared-pms-transcode-pvc] \
#     --set ingress.enabled=true

resource "kubernetes_namespace" "plex" {
  metadata {
    name = "plex"
  }
}


# resource "helm_release" "plex" {
#   name       = "plex"
#   repository = "https://ressu.github.io/kube-plex"
#   chart      = "kube-plex"
#   namespace  = kubernetes_namespace.plex[0].metadata[0].name
#   set {
#     name  = "claimToken"
#     value = var.plex_claim_token
#   }
#   set {
#     name  = "persistence.data.claimName"
#     value = "[existing-pms-data-pvc]" //NAS
#   }
#   set {
#     name  = "persistence.transcode.enabled"
#     value = "true"
#   }
#   set {
#     name  = "persistence.transcode.claimName"
#     value = "plex-transcode-pvc"
#   }
#   set {
#     name  = "ingress.enabled"
#     value = "true"
#   }
# }
