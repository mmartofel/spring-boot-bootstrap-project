
# Package with skipTests
# mvn clean package -DskipTests

# Set Maven memory options if required
# export MAVEN_OPTS=-Xmx1024m -XX:MaxPermSize=128M

mvn spring-boot:run

# run Docker image build
# mvn spring-boot:build-image