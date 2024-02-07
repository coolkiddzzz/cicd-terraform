This is my terraform version Terraform v1.6.6

In this project, I have used terraform and github actions to deploy AWS resources. 

**What does it do** 
- It creates AWS resources. The sample resources given here for creation are: EC2, Simple Notification Service.

**How it works**
1. In this project, when developers create a branch and decides to merge the request into the main branch, a pull request is created and CI validation will run.
2. After running the CI validation, if its successful, developer's branch can be pushed to the main branch. CD will run. 

**Tools Used**
- Terraform
- Github actions
- AWS resources


