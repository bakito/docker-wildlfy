FROM bakito/java:latest

ENV JBOSS_HOME /opt/wildfly
ENV PATH $JBOSS_HOME/bin:$PATH

RUN cd /tmp && wget -q -c -O "wildfly.tar.gz" --no-check-certificate --no-cookies  "http://download.jboss.org/wildfly/9.0.1.Final/wildfly-9.0.1.Final.tar.gz" && tar -zxvf wildfly.tar.gz > /dev/null && rm /tmp/wildfly.tar.gz -Rf && mv /tmp/wildfly* /opt && ln -s /opt/wildfly* $JBOSS_HOME && rm /tmp/* -Rf
