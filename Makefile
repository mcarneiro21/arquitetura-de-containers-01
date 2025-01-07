s3-init:
	cd s3 && AWS_PROFILE=sandbox terraform init

s3-apply:
	cd s3 && terraform apply

s3-destroy:
	cd s3 && terraform destroy

vpc-init:
	terraform init ./vpc/

vpc-apply:
	terraform apply ./vpc/

vpc-destroy:
	terraform destroy ./vpc/