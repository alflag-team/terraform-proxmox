module "monitor1002" {
  source = "../../modules/vm"

  name        = "monitor1002"
  target_node = "kitsune"
  memory      = 1024 * 2
  startup     = "order=2,up=60,down=60"
  ipconfig0   = "ip=10.210.2.2/24,gw=10.210.0.1"
  storage     = "local-lvm"
  cores       = 2
  size        = "32G"
  vmid        = 101
  full_clone  = false
  cicustom    = "user=local:snippets/user-data.yaml"
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}
