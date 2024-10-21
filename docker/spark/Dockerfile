FROM bitnami/spark:3.5.1


WORKDIR /app

USER root

RUN install_packages curl wget

ENV DELTA_CONNECTOR="io.delta:delta-spark_2.12:3.2.0"

RUN /opt/bitnami/spark/bin/spark-shell --packages $DELTA_CONNECTOR --repositories https://repo1.maven.org/maven2
