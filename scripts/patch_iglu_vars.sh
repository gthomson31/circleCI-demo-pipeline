#! /bin/sh

# -- Navigate to the Repo 
cd quickstart-examples/terraform/aws && pwd
# -- Find and replace for enviroment variables
sed -i  's|prefix = .*|prefix = "'"$PREFIX"'"|' iglu_server/default/terraform.tfvars
sed -i  's|vpc_id            = .*|vpc_id = "'"${VPC_ID}"'"|' iglu_server/default/terraform.tfvars
sed -i  's|public_subnet_ids = .*|public_subnet_ids = ["'"${PUBLIC_SUBNET_1}"'","'"${PUBLIC_SUBNET_2}"'"]|' iglu_server/default/terraform.tfvars
sed -i  's|ssh_ip_allowlist = .*|ssh_ip_allowlist = ["'"${ALLOWED_IP}"'"]|' iglu_server/default/terraform.tfvars
sed -i  's|ssh_public_key = .*|ssh_public_key = "'"${SSH_PUBLIC_KEY}"'"|' iglu_server/default/terraform.tfvars
sed -i  's|iglu_db_password = .*|iglu_db_password = "'"${IGLU_DB_PASSWORD}"'"|' iglu_server/default/terraform.tfvars
sed -i  's|iglu_super_api_key = .*|iglu_super_api_key = "'"${IGLU_API_KEY}"'"|' iglu_server/default/terraform.tfvars
sed -i  's|iam_permissions_boundary = .*|iam_permissions_boundary = "'"${IAM_PERMISSIONS_BOUNDRY}"'"|' iglu_server/default/terraform.tfvars