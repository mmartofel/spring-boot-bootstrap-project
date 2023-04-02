docker network create spring-network

docker run \
    -p 5432:5432 \
    --net=spring-network \
    --name spring-postgres \
    -e POSTGRES_USER=demo \
    -e POSTGRES_PASSWORD=demo \
    -e POSTGRES_DB=demo \
    -d postgres

# Use following command to check your database
#
# docker exec -it spring-postgres psql -U demo
# 

docker run \
    -p 8080:8080 \
    --net=spring-network \
    --name=spring-boot-bootstrap-project \
    -d quay.io/mmartofe/spring-boot-bootstrap-project:0.0.1-SNAPSHOT