FROM mpr
ADD target/devop_calculator-1.0-SNAPSHOT.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "devop_calculator-1.0-SNAPSHOT.jar.jar"]