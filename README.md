# ansible-aws-hubot-hipchat

This is an Ansible (2.1.1) project to setup Hubot on the Amazon Linux AMI (2016.09.0) and integrate it with HipChat ..
It assumes:
- You have an AWS account
- You have AWS credential keys
- You have said AWS credential keys in your ~/.boto file, under the "hubot" profile
- - `[profile hubot]
     output = json
     region = us-east-1
     aws_access_key_id = abc123
     aws_secret_access_key = 123abc`
- You have Ansible installed locally
