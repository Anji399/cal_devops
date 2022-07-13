FROM ubuntu:22.04
ADD target/devop_calculator-1.0-SNAPSHOT.jar devop_calculator-1.0-SNAPSHOT.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "devop_calculator-1.0-SNAPSHOT.jar.jar"]