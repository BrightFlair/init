`ec2-web`
=========

The `ec2-web` init script creates an Nginx webserver with shared client user accounts. The client user accounts are limited to their own home directory, but have the ability to control their own virtual hosts.


* Secures user accounts, isolating from each other.
* Creates a base configuration directory, acting as a template to be placed in $HOME/.cfg for each user.
* Installs Nginx with a selection of latest-stable PHP5 packages.
* Adds client configuration loading capabilities to Nginx.
* Adds scripts accessible to all clients for creating new virtual hosts and reloading their hosts into the server.
* Adds administrative scripts for easily adding new clients.
* Isolated user accounts means one-step scalability.
