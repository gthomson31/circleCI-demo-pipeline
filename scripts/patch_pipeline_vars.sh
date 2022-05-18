# -- Navigate to the Repo
export IGLU_URL=$(cat /home/circleci/project/terraform_outputs/iglu_server.txt| sed 's/"//g')
cd quickstart-examples/terraform/aws && pwd
# -- Find and replace for enviroment variables
sed -i  's|prefix = .*|prefix = "'"$PREFIX"'"|' pipeline/default/terraform.tfvars
sed -i  's|s3_bucket_name = .*|s3_bucket_name = "'"${S3_DATA_BUCKET}"'"|' pipeline/default/terraform.tfvars
sed -i  's|vpc_id            = .*|vpc_id = "'"${VPC_ID}"'"|' pipeline/default/terraform.tfvars
sed -i  's|public_subnet_ids = .*|public_subnet_ids = ["'"${PUBLIC_SUBNET_1}"'","'"${PUBLIC_SUBNET_2}"'"]|' pipeline/default/terraform.tfvars
sed -i  's|ssh_ip_allowlist = .*|ssh_ip_allowlist = ["'"${ALLOWED_IP}"'"]|' pipeline/default/terraform.tfvars
sed -i  's|ssh_public_key = .*|ssh_public_key = "'"${SSH_PUBLIC_KEY}"'"|' pipeline/default/terraform.tfvars

sed -i  's|iglu_server_dns_name = .*|iglu_server_dns_name = "'"http://${IGLU_URL}"'"|' pipeline/default/terraform.tfvars
sed -i  's|iglu_super_api_key = .*|iglu_super_api_key = "'"${IGLU_API_KEY}"'"|' pipeline/default/terraform.tfvars
sed -i  's|pipeline_db_ip_allowlist        = .*|pipeline_db_ip_allowlist = ["'"${ALLOWED_IP}"'"]|' pipeline/default/terraform.tfvars

sed -i  's|iam_permissions_boundary = .*|iam_permissions_boundary = "'"${IAM_PERMISSIONS_BOUNDRY}"'"|' pipeline/default/terraform.tfvars