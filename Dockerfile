FROM cimg/openjdk:8.0
USER root
RUN sudo apt-get update; sudo apt-get install pax
ADD https://archive.apache.org/dist/ant/binaries/apache-ant-1.10.14-bin.tar.gz /tmp
RUN cd / && tar -xf /tmp/apache-ant-1.10.14-bin.tar.gz && chown -R circleci /apache-ant-1.10.14 && rm /tmp/apache-ant-1.10.14-bin.tar.gz
USER circleci
ENV ANT_HOME="/apache-ant-1.10.15"
ENV PATH="${PATH}:${ANT_HOME}/bin"
