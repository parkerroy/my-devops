# my-devops
1. Set up AWS user and role 
2. Create key pair for instance
3. Generate ssh key for github access 
4. On Jenkins: Add the "CloudBees AWS Credentials" Plugin
5. On Jenkins: Add SSH Username and Private Key credential
6. On Jenkins: Add AWS Credentials 
7. On Jenkins: Take note/generate of API Token (Manage Jenkins > Manage Users)
8. Set up Terraform file 
9. Set up Terraform file variables for Jenkins to use
10. On Jenkins: Create freestyle job
11. On Jenkins Job: Select "This project is parameterized" 
12. On Jenkins Job: Add the following Parameters: Action(Choice), Ansible(Boolean), Name(String),Group(String)
13. On Jenkins Job: Select Git repository URL and key for job
14. On Jenkins Job: Under 'Build Environment' Select the AWS credentials
15. On Jenkins Job: Under 'Build Steps' Enter in shell script to execute
16. Set up Ansible cfg file 
17. Set up directory for /etc/ansible/group_vars/tag_group_rmq.yaml and insert path to ansible_ssh_private_key_file and ansible_user
18. Create file /etc/ansible/aws_ec2.yaml
19. Set up RMQ playbook for installation
20. On Jenkins: Set up new free style project
21. On Jenkins: Select Git repository URL and key for job
22. On Jenkins: Add Build Trigger with the Authentication Token for the user created previously
23. On Jenkins: Under Build add shell script: ansible-playbook -i /etc/ansible/aws_ec2.yaml ansible/rmq/rmq_playbook.yml
