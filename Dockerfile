FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar ${0} ${@}"]

# docker build --build-arg JAR_FILE=build/libs/*.jar -t parkjinhui/kotilnstudy .
# docker run -p 9000:9000 parkjinhui/kotilnstudy --server.port=9000