docker exec elk-docker_elasticsearch_1 /bin/bash -c "bin/elasticsearch-setup-passwords \
interactive --batch --url http://elasticsearch:9200"