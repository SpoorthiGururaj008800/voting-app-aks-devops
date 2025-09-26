variable "location" {
default = "East US"
}

variable "rg_name" {
default = "rg-votingapp-terraform"
}

variable "acr_name" {
default = "acrvotingappterraformnew"
}

variable "aks_name" {
default = "aks-votingapp-terraform"
}

variable "node_count" {
default = 2
}

variable "node_size" {
default = "Standard_B2s"
}
