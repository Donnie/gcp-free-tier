### What is this?
This is Terraform code to setup a compute instance on Google Cloud.

### What do I get?
You get a compute instance with 1vCPU, 1GB RAM and 30GB storage out of which is 2GB Swap space

### Is it free of cost?
Yes, it is free of cost as per [Google's Free Forever tier.](https://cloud.google.com/free/docs/free-cloud-features#compute)

### How do I get it?
#### Auth with Google
1. Clone this repo locally, and create a Project on Google Console
2. Download JSON credentials from your service account. [See here.](https://cloud.google.com/iam/docs/creating-managing-service-account-keys?hl=en#creating)
3. Add the json file as `creds.json` in root folder of this repo, and copy `terraform.tfvars.example` to `terraform.tfvars`
4. Create a ssh key pair using: `ssh-keygen`
5. You can find the location of your public key from the output of `ssh-keygen`. See Line 7 in the output like in this image:
![image](https://user-images.githubusercontent.com/4614666/193446515-00221852-ff56-4e0e-9e98-a997e01376c8.png)
6. Update the values and add your public key to the `.tfvars` file

#### Terraform Apply
Do `terraform apply`

#### Logging in thru SSH
1. Terraform would output the `external_ip` of the instance on successful apply.
2. Now you may use the same IP adreess to ssh: `ssh user@external_ip`

#### Destroy and clean up
Do `terraform destroy`

### Improvements
Feel free to improve this with a PR or raise an [issue](https://github.com/Donnie/gcp-free-tier/issues).
