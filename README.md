# Bright Flair server repo
EC2 initialisation scripts

When launching a new EC2 instance, paste the following user data in step 3:

```
curl -sS http://init.brightflair.com/ec2-web | bash
```

For more information: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
