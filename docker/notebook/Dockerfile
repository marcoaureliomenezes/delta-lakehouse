FROM bitnami/spark:3.5.1


WORKDIR /app

USER root

RUN install_packages curl

ENV DELTA_CONNECTOR="io.delta:delta-spark_2.12:3.2.0"
# ENV S3_BUNDLE_CONECTOR="software.amazon.awssdk:bundle:2.17.178"
# ENV S3_SDK_CONECTOR="software.amazon.awssdk:url-connection-client:2.17.178"

RUN /opt/bitnami/spark/bin/spark-shell --packages $DELTA_CONNECTOR --repositories https://repo1.maven.org/maven2

COPY conf/spark-defaults.conf /opt/bitnami/spark/conf/spark-defaults.conf

COPY requirements.txt .
RUN pip install -r requirements.txt

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root",  "--NotebookApp.token=''"]