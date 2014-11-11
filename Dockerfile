FROM makuk66/docker-solr
MAINTAINER Eliot Jordan <eliotj@princeton.edu>

WORKDIR /opt

RUN apt-get update && apt-get -y install git
RUN git clone https://github.com/sul-dlss/geoblacklight-schema.git
RUN cp -r geoblacklight-schema/conf/* /opt/solr/example/solr/collection1/conf

EXPOSE 8983

CMD ["/bin/bash", "-c", "cd /opt/solr/example; java -jar start.jar"]
