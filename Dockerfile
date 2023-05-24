FROM cimg/openjdk:8.0
USER root
RUN sudo apt-get update; sudo apt-get install pax
ADD https://dlcdn.apache.org//ant/binaries/apache-ant-1.10.13-bin.tar.gz /tmp
RUN cd / && tar -xf /tmp/apache-ant-1.10.13-bin.tar.gz && chown -R circleci /apache-ant-1.10.13 && rm /tmp/apache-ant-1.10.13-bin.tar.gz
USER circleci
ENV ANT_HOME="/apache-ant-1.10.13"
ENV PATH="${PATH}:${ANT_HOME}/bin"