get-ip:
	jq .resources[0].instances[0].attributes.network_interface[0].access_config[0].nat_ip -r terraform.tfstate
