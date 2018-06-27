# Deployment of MetaExp-Software

## run MetaExp

### clone repositories
- run bash script `clone-repositories.sh`
- this will clone all repositories in `./src`

### run Docker compose
- `docker-compose -f compose-full.yml up`


# Issues
- interface does not see backend under hostname (works inside container from command line, `curl backend:8000/get-available-datasets`), interface does not get a response from same URL


# TODO
- move nginx out of interface into own container, easy to run from Docker compose
- Python backend: get config from environment/file, mount config file on container run
- create Docker hub repository and make images available

