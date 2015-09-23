#FROM ubuntu:14.04
FROM tifayuki/java:8
COPY target /opt/rules
VOLUME /opt/rules