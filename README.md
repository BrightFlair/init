# AWS server initialisation

Scripts to automate deployment of different types of AWS infrastructure.

Each INIT_TYPE has its own directory within the repository, containing at least an `_init` script.

`_init` will be run, then all non-numerical scripts will be added to the PATH, followed by execution of any numbered scripts (`001-do-something`, `002-do-something-else`).

## ec2

To use this repository when launching a new instance, paste the following user data into step 3:

```
#!/usr/bin/env bash
curl http://init.brightflair.com | bash -s INIT_TYPE
```

Substitute INIT_TYPE with one of the following init scripts within this repository.

For more information: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html

### ec2-web

The ec2-web init script creates an Nginx webserver with shared client user accounts. The client user accounts are limited to their own home directory, but have the ability to control their own virtual hosts.

* Secures user accounts, isolating from each other.
* Creates a base configuration directory, acting as a template to be placed in $HOME/.cfg for each user.
* Installs Nginx with a selection of latest-stable PHP5 packages.
* Adds client configuration loading capabilities to Nginx.
* Adds scripts accessible to all clients for creating new virtual hosts and reloading their hosts into the server.
* Adds administrative scripts for easily adding new clients.
* Isolated user accounts means one-step scalability.
