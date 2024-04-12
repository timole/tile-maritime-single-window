FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY src/main/kotlin/PortcallsPrinter.jar tilemaritimesinglewindow.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar tilemaritimesinglewindow.jar
