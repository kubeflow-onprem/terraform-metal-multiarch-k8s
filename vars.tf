variable "auth_token" {
  description = "Your Packet API key"
}

variable "facility" {
  description = "Packet Facility"
  default     = "ewr1"
}

variable "project_id" {
  description = "Packet Project ID"
}

variable "plan_arm" {
  description = "Plan for K8s ARM Nodes"
  default     = "baremetal_2a"
}

variable "plan_x86" {
  description = "Plan for K8s x86 Nodes"
  default     = "c1.small.x86"
}

variable "plan_gpu" {
  description = "Plan for GPU equipped nodes"
  default     = "g2.large"
}

variable "plan_primary" {
  description = "K8s Primary Plan (Defaults to x86 - baremetal_0)"
  default     = "c1.small.x86"
}

variable "cluster_name" {
  description = "Name of your cluster. Alpha-numeric and hyphens only, please."
  default     = "packet-multiarch-k8s"
}

variable "count_arm" {
  default     = "3"
  description = "Number of ARM nodes."
}

variable "count_x86" {
  default     = "3"
  description = "Number of x86 nodes."
}

variable "count_gpu" {
  default     = "0"
  description = "Number of GPU nodes."
}

variable "kubernetes_version" {
  description = "Version of Kubeadm to install"
  default     = "1.15.3-00"
}

variable "secrets_encryption" {
  description = "Enable at-rest Secrets encryption"
  default     = "no"
}

variable "configure_ingress" {
  description = "Configure Traefik"
  default     = "no"
}

variable "ceph" {
  description = "Configure Ceph Operator"
  default     = "no"
}

variable "skip_workloads" {
  description = "Skip Packet workloads (CSI, MetalLB)"
  default     = "no"
}

variable "configure_network" {
  description = "Configures network for cluster"
  default     = "yes"
}

variable "network" {
  description = "Configures Kube Network (flannel or calico)"
  default     = "calico"
}

variable "control_plane_node_count" {
  description = "Number of control plane nodes (in addition to the primary controller)"
  default     = "0"
}

variable "ssh_private_key_path" {
  description = "Path to SSH private key-- this is only used for control plane node spin-up locally; is not used if control_plane_node_count set to 0."
  default     = ""
}
