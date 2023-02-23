build:
		cd 1.namespace_setup && source ../scripts/setenv.sh && 	tfenv install 1.1.1 && tfenv use 1.1.1 &&  terraform apply -var-file ../0.account_setup/configurations.tfvars	-auto-approve

		cd 2.app_setup && source ../scripts/setenv.sh && 	tfenv install 1.1.1 && tfenv use 1.1.1 &&  terraform apply -var-file ../0.account_setup/configurations.tfvars	-auto-approve

		cd 3.monitoring_setup && source ../scripts/setenv.sh && 	tfenv install 1.1.1 && tfenv use 1.1.1 &&  terraform apply -var-file ../0.account_setup/configurations.tfvars	-auto-approve


destroy:
		cd 1.namespace_setup && terraform init && terraform destroy -var-file ../0.account_setup/configurations.tfvars	-auto-approve

		cd 2.app_setup && terraform init && terraform destroy -var-file ../0.account_setup/configurations.tfvars	-auto-approve

		cd 3.monitoring_setup && terraform init && terraform destroy -var-file ../0.account_setup/configurations.tfvars	-auto-approve




