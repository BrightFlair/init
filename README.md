# AWS server initialisation

Scripts to automate deployment of different types of AWS infrastructure.

Each INIT_TYPE has its own directory within the repository, containing numerically-ordered initialisation scripts and optional scripts to be added to the PATH.

After running `init`, the INIT_TYPE's non-numeric scripts will be added to the PATH for all users, then the root user will begin to execute the numeric scripts.

## Setup

```
# Enable AWS autocompletion
complete -C $(which aws_completer) aws
```

## Creating a new instance

### Defaults

* AMI: Ubuntu 14.04 LTS (ami-234ecc54)
* Instance Type: t2.micro

```
aws ec2 run-instances
    --image-id ami-234ecc54
    --instance-type t2.micro
```

### ec2

#### CLI initilisation

Clone this repo, then run:

```
INIT_TYPE="init-type" # Change value in quotes.
source functions
launchInstance my-hostname i-12345 key-name t1.binky sg-12345
waitForLaunch # Uses the last-launched resource ID
```

#### Web initilisation

To use this repository when launching a new instance, paste the following user data into step 3 of ec2's server initialisation screen:

```
#!/usr/bin/env bash
curl http://init.brightflair.com/init | bash -s INIT_TYPE
```

Substitute INIT_TYPE with one of the following init scripts within this repository.

For more information: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
