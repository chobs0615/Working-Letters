HOW TO USE
==================
1. Build docker image form Dockerfile

    `docker build -t develop_env .`
    
1. Run docker container has tty

    `docker run -it develop_env `
    
1. Run docker container has tty with volume 

    `docker run -it -v ${directory_in_host_machine}:${directory_in_docker} develop_env`
