module "cache1001" {
  source = "../../modules/vm"

  name        = "cache1001"
  target_node = "kitsune"
  memory      = 1024 * 2
  startup     = "order=1,up=60,down=60"
  ipconfig0   = "ip=10.210.5.1/24,gw=10.210.0.1"
  storage     = "hdd-01"
  cores       = 2
  size        = "16G"
  vmid        = 102
  full_clone  = false
  cicustom    = "user=local:snippets/user-data.yaml"
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}
