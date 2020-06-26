provider "kubernetes" {
  # When no host is specified this provider reads ~./kube/config
}

provider "kubectl" {
}

resource "kubernetes_role_binding" "default_admin" {
  metadata {
    name = "default-admin"
  }

  subject {
    kind      = "ServiceAccount"
    name      = "default"
    namespace = "default"
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "admin"
  }
}

module "um-login-service" {
  source = "../global/um-login-service"
  hostname = var.hostname
}

output "lb_address" {
  value = module.um-login-service.lb_address
}

module "um-user-profile" {
  source = "../global/um-user-profile"
  nginx_ip = module.um-login-service.lb_address
  hostname = var.hostname
  module_depends_on = [ module.um-login-service.um-login-service-up ]
}  

module "proc-ades" {
  source = "../global/proc-ades"
  dh_user_email = var.dh_user_email
  dh_user_name = var.dh_user_name
  dh_user_password = var.dh_user_password
  wspace_user_name = var.wspace_user_name
  wspace_user_password = var.wspace_user_password
  module_depends_on = [ module.um-login-service.um-login-service-up, module.um-user-profile.um-user-profile-up ]
}

module "rm-workspace" {
  source = "../global/rm-workspace"
  wspace_user_name = var.wspace_user_name
  wspace_user_password = var.wspace_user_password
  module_depends_on = [ module.proc-ades.proc-ades-up ]
}
