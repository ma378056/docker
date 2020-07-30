FROM java
ADD /var/lib/jenkins/workspace/maven-build/target/myproject-0.0.1-SNAPSHOT.jar /app.jar
ADD ./run.sh /run.sh
RUN chmod a+x /run.sh
EXPOSE 8080:8080
CMD /run.sh