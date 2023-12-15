VM_BOX_NAME = "generic/alpine319" # Alpine Linux LTS

SERVER_NAME = "cuzureauS" # "Server"
AGENT_NAME = "cuzureauSW" # "Server Worker"

SERVER_IP = "192.168.56.110"
AGENT_IP = "192.168.56.111"

VM_PROVIDER = "virtualbox"
VM_MEMORY = 512 # RAM
VM_CPUS = 1

SYNCED_FOLDER = "shared"
K3S_TOKEN = "/var/lib/rancher/k3s/server/node-token"

SERVER_SCRIPT_PATH = "./scripts/server_install.sh"
AGENT_SCRIPT_PATH = "./scripts/agent_install.sh"

SERVER_ENV = {"SERVER_IP"=>SERVER_IP, "K3S_TOKEN"=>K3S_TOKEN, "SYNCED_FOLDER"=>SYNCED_FOLDER}
AGENT_ENV = {"AGENT_IP"=>AGENT_IP, "SERVER_IP"=>SERVER_IP, "SYNCED_FOLDER"=>SYNCED_FOLDER}
