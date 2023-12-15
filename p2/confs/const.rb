VM_BOX_NAME = "generic/alpine319" # Alpine Linux LTS
SERVER_NAME = "cuzureauS" # "Server"
SERVER_IP = "192.168.56.110"

VM_PROVIDER = "virtualbox"
VM_MEMORY = 1024 # RAM
VM_CPUS = 1

SYNCED_FOLDER = "apps"

SERVER_SCRIPT_PATH = "./scripts/server_install.sh"
SERVER_ENV = {"SERVER_IP"=>SERVER_IP, "K3S_TOKEN"=>K3S_TOKEN, "SYNCED_FOLDER"=>SYNCED_FOLDER}
