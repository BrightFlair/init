# AWS server initialisation

## ec2

To use this repository when launching a new instance, paste the following user data into step 3:

```
#!/usr/bin/env bash
curl -LO http://init.brightflair.com/init && bash init INIT_TYPE
```

Substitute INIT_TYPE with one of the following init scripts within this repository.

For more information: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html

### ec2-web

The ec2-web init script creates an Nginx webserver with shared client user accounts. The client user accounts are limited to their own home directory, but have the ability to control their own virtual hosts.

* Creates a base configuration directory, acting as a template to be placed in $HOME/.cfg for each user.
* Installs Nginx with a selection of latest-stable PHP5 packages.
* Adds client configuration loading capabilities to Nginx.
* Adds scripts accessible to all clients for creating new virtual hosts and reloading their hosts into the server.
* Adds administrative scripts for easily adding new clients.
* Isolated user accounts means one-step scalability.
