# /volume1/video

# helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/

# helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
#     --set nfs.server=192.168.1.100 \
#     --set nfs.path=/volume1/video



resource "helm_release" "nfs-subdir-external-provisioner" {
  name       = "nfs-subdir-external-provisioner"
  repository = "https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/"
  chart      = "nfs-subdir-external-provisioner"
  namespace  = kubernetes_namespace.plex.metadata[0].name
  set {
    name  = "nfs.server"
    value = "192.168.1.100"
  }
  set {
    name  = "nfs.path"
    value = "/volume1/video"
  }
}
