FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copia o seu arquivo JAR (já compilado) para dentro do container
COPY target/*.jar app.jar

# Expõe a porta que a aplicação vai utilizar (ajuste conforme necessário)
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
