FROM    base:ubuntu-12.10
MAINTAINER Elasticsearch <info@elasticsearch.org>

# Install Java 7
RUN apt-get install software-properties-common -y
RUN apt-add-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get install oracle-java7-installer -y

# Comment this out if you want to create a container from your local build
ADD https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.tar.gz /
RUN tar xf elasticsearch-0.90.3.tar.gz

EXPOSE :9200

# Start ElasticSearch
CMD elasticsearch-0.90.3/bin/elasticsearch -f
