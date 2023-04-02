
# Build container image with Paketo buildpacks using Maven plugin
mvn spring-boot:build-image -Dspring-boot.build-image.imageName=quay.io/mmartofe/spring-boot-bootstrap-project:0.0.1-SNAPSHOT

# Build container image with regular Dockerfile (OpenJDK binaries built by Eclipse Temurin, by Adoptium)
docker build -f ./dockerfiles/Dockerfile -t quay.io/mmartofe/spring-boot-bootstrap-project:docker-build .

# Build container image with regular Dockerfile (Red Hat certified image)
docker build -f ./dockerfiles/Dockerfile-RH -t quay.io/mmartofe/spring-boot-bootstrap-project:docker-build-RH .

