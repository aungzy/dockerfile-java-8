# Pull base image
FROM ubuntu

# apt-get update and install java-8
RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:webupd8team/java && \
    apt-get update -y && \
    apt-get install -y oracle-java8-installer

# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Default command
CMD ["bash"]
