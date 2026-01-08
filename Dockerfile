# ---- Build WAR ----
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
RUN mvn -q -DskipTests clean package

# ---- Run on Tomcat ----
FROM tomcat:10.1-jdk21-temurin

# Railway sets PORT; Tomcat defaults to 8080, so we rewrite it at runtime
ENV PORT=8080

# Copy WAR as ROOT so it opens at /
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Replace Tomcat connector port using PORT env var, then start Tomcat
CMD ["sh", "-c", "sed -i.bak \"s/port=\\\"8080\\\"/port=\\\"${PORT}\\\"/\" /usr/local/tomcat/conf/server.xml && catalina.sh run"]