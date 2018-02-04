FROM openjdk:8
ADD apache-activemq-5.15.2-bin.tar.gz /deployments/
COPY activemq /deployments/apache-activemq-5.15.2/bin/
EXPOSE 8161
EXPOSE 61616
RUN chown -R 1001:0 /deployments/apache-activemq-5.15.2
USER 1001
RUN chmod -R 777 /deployments/apache-activemq-5.15.2/data/ && chmod -R 777 /deployments/apache-activemq-5.15.2/
ENTRYPOINT ["/deployments/apache-activemq-5.15.2/bin/activemq", "start"]
