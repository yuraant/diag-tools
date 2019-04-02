# diag-tools
Container with diagnostic tools for your k8s cluster or you can run it locally for troubleshooting.
it contains:
- curl
- jq
- telnet( busybox-extras)
- dig, nslookup (bind-tools)

Based on alpine:3.9 image.

## Requirements
####  Use container for k8s
You need to have `kubectl` version 1.9.0+
####   Use container local (docker run)
You need to have `docker` version 17.02.+ 

## Run container on k8s
Repo includes deployment yml file for `diag-tools` [diag-tools.yml](https://github.com/yuraant/diag-tools/blob/master/diag-tools.yml)
You can deploy this container to your k8s cluster just executing this command

    kubectl apply -f https://raw.githubusercontent.com/yuraant/diag-tools/master/diag-tools.yml
also you can specify namespace:

    kubectl apply -n <namespace> -f https://raw.githubusercontent.com/yuraant/diag-tools/master/diag-tools.yml

## Run docker local
There is small bash script to run `diag-tools` local [run.docker](https://github.com/yuraant/diag-tools/blob/master/run.docker)
This script runs container and attaches to one.
You need to set permission to file run.docker to make it executable.   `` 

    # chmod u+x run.docker
    # ./run.docker
or 

    # bash run.docker
