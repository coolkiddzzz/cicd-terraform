# Intro

This is my first terraform project using Terraform v1.6.6. 

## About this project
- This project aims to create a CICD pipeline with Github actions. 
- It uses IaC to create cloud resources. The sample resources given here for creation are EC2 and Simple Notification Service.

<u>Deploying AWS resources using Terraform and Github Actions</u>
- When developers create a branch and decides to merge the request into the main branch, a pull request is created and CI validation will run.
- If the CI validation is successful, developer's branch can be pushed to the main branch and CD will run. 
- Select the CD workflow to run (eg dev, prod, staging environment) for the resources to be deployed. Edit terraform ```<environment>.tfvars``` if neccessary. 
- Cloud resources will be deleted after 3mins. 

## Additional Assignment with ansible
<u>Managing AWS resources using ansible:</u>
- Using the EC2s created, I have used 1 EC2 as an ansible server to configure the other EC2s. 
- With the Ansible server,
  - To allow connection between the servers, set up SSH keys and copy the public key to the target server. 
    - Use SSH (```ssh-keygen -t rsa```) to generate the public key.
    - Copy public key to the target servers (Run vi ~/.ssh/authorized_keys > click “i” > paste the contents of id_rsa.pub > click “ESC” + :wq! )
  - Git clone this repo on ansible server.
  - Enter the EC2s IP address in the ```ansible > inventory.yaml``` file using vi editor.
  - cd to ansible folder and run the command ```ansible-playbook -i inventory.yml install.yml```
  - Check if httpd is running on the other servers using ```sudo systemctl status httpd```
- If successful, it shows that ansible has properly configured httpd on the target servers.

**Tools Used**
- Terraform
- Github actions
- AWS resources
- Ansible


