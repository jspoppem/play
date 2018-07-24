FROM jboss/wildfly
ADD cluster-example-1.0-SNAPSHOT.war /opt/jboss/wildfly/standalone/deployments/
ADD VERSION .
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
