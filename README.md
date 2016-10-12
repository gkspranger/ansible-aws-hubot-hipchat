# ansible-aws-hubot-slack

This is an Ansible (2.1.1) project to setup Hubot on the Amazon Linux AMI (2016.09.0) and integrate it with Slack .. In other words, it's your very own chat Bot !!

I assume:
- You have an AWS account
- You have AWS credential keys
- You have said AWS credential keys in your ~/.boto file, under a "hubot" profile
```sh
[profile hubot]
output = json
region = us-east-1
aws_access_key_id = abc123
aws_secret_access_key = 123abc
```
- You have Ansible and Boto installed locally
```sh
pip install ansible boto
````
- You have created a Slack team and a custom Bot user
  - Make sure to grab the API token