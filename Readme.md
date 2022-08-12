## Auth with Google
1. Create a Project on Google Console
2. Download JSON credentials from your service account.
3. Add the json file as `creds.json` in root folder of this repo, and copy `terraform.tfvars.example` to `terraform.tfvars`
4. Update the values and add your `ssh_keys` in the tfvars file

## Terraform
Do `terraform apply`

## Logging in thru SSH
1. Terraform would output the `external_ip` of the instance on successful apply.
2. Now you may `ssh user@external_ip`

## What do you get?
You get a free compute instance with 1vCPU, 1GB RAM and 30GB storage out of which is 2GB Swap space

### Improvements
Feel free to improve this with a PR
