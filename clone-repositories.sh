mkdir src/
cd src

########### 32de-python
git clone https://github.com/KDD-OpenSource/32de-python.git

########### neo4j-graph-algorithms
git clone -b alpha-dev https://github.com/KDD-OpenSource/neo4j-graph-algorithms.git

########### 32de-UI
git clone https://github.com/KDD-OpenSource/32de-UI.git
export REACT_APP_API_HOST=http://localhost:8000/