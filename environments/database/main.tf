module "database1003" {
  source = "../../modules/vm"

  name        = "database1003"
  target_node = "kitsune"
  memory      = 1024*2
  startup     = "order=1,up=60,down=60"
  ipconfig0   = "ip=10.210.4.3/24,gw=10.210.0.1"
  storage     = "local-lvm"
  cores       = 2
  size        = "32G"
  vmid        = 100
  full_clone  = false
  cicustom    = "user=local:snippets/user-data.yaml"
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}
