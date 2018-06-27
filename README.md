# Deployment of MetaExp-Software

## run MetaExp

### clone repositories
- run bash script `clone-repositories.sh`
- this will clone all repositories in `./src`

### run Docker compose
- `docker-compose -f compose-full.yml up`

### prepare data
- open neo4j `localhost:7474`, user `neo4j`, password `test`, add some data
- call `localhost:8000/redis-import` and wait
- call `http://localhost:8000/train-embeddings/DATABASE_NAME`, the database name is in the settings for available datasets in the backend container (utils/config.py, AVAILABLE_DATA_SETS constant)


# Issues
- ~interface does not see backend under hostname (works inside container from command line, `curl backend:8000/get-available-datasets`), interface does not get a response from same URL~ when it runs in the browser you are not 'in' the container
- repositories are cloned in subdirectory `src` within the repository and the `src` directory is gitignored, that's nice for quick testing but also confusing, clone to external path?
- neo4j data is also stored within the repository (`neo4j_data`) and the direcotry is gitignored, maybe store somewhere else?
- Python backend has hardcoded URLs, get them from settings


# TODO
- move nginx out of interface into own container, easy to run from Docker compose
- Python backend: get config from environment/file, mount config file on container run
- create Docker hub repository and make images available
- use with external neo4j
- document how to load initial data set to neo4j
- more error reporting: e.g. empty neo4j just crashes


