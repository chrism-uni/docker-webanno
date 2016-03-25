FROM tomcat:6-jre7
ENV JAVA_OPTS="-Djava.awt.headless=true -Xmx750m -XX:+UseConcMarkSweepGC -Dwebanno.home=/webanno"

RUN wget -q "https://bintray.com/artifact/download/webanno/downloads/webanno-webapp-2.3.0.war" && \
  rm -rf $CATALINA_HOME/webapps/ROOT && \
  cp webanno-webapp-2.3.0.war $CATALINA_HOME/webapps/ROOT.war

RUN mkdir -p /webanno
VOLUME ["/webanno"]
EXPOSE 8080
