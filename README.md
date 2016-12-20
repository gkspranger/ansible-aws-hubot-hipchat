# ansible-aws-hubot-slack

This is an Ansible (2.1.1) project to setup Hubot on the Amazon Linux AMI (2016.09.0) and integrate it with Slack .. In other words, it's your very own chat Bot !!

I assume:
* You have an AWS account
* You have AWS credential keys
* You have said AWS credential keys in your ~/.boto file, under a "hubot" profile
```python
[profile hubot]
output = json
region = us-east-1
aws_access_key_id = abc123
aws_secret_access_key = 123abc
```
* You have Ansible and Boto installed locally
```bash
pip install ansible==2.1.1 boto
```
* You have created a Slack team and a custom Bot user
  * Go learn about Bot users: https://api.slack.com/bot-users
  * The link above links to "creating a new bot user" .. Go do it !!
* You have created your own Ansible Vault password file
  * ~/.ansible_hubot_vault.txt
* You have created your own ./vars/secrets.yml file
```bash
ansible-vault create vars/secrets.yml
```
```python
---

slack_hal_api_token: xyz456
```
