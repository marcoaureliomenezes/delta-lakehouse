FROM apache/hive:4.0.0-alpha-2


# Install io.delta » delta-hive_2.13 » 3.2.0
USER root


# Download from git https://github.com/delta-io/delta/releases/download/v3.2.0/delta-hive-assembly_2.12-3.2.0.zip

RUN apt-get update && apt-get install -y curl unzip

RUN  curl -L -o /tmp/delta-hive-assembly_2.12-3.2.0.zip https://github.com/delta-io/delta/releases/download/v3.2.0/delta-hive-assembly_2.12-3.2.0.zip


RUN unzip /tmp/delta-hive-assembly_2.12-3.2.0.zip -d /opt/hive/aux_hive



COPY conf/hive-site.xml /opt/hive/conf/hive-site.xml

