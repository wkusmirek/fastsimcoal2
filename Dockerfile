FROM ubuntu:20.04

WORKDIR /opt

RUN apt-get update; apt-get install -y wget git unzip
ADD . fastsimcoal

WORKDIR /opt/fastsimcoal
RUN wget https://cmpg.unibe.ch/software/fastsimcoal2/downloads/fsc28_linux64.zip; unzip fsc28_linux64.zip

RUN chmod 777 /opt/fastsimcoal/fsc28_linux64/fsc28

# CMD ["/opt/fastsimcoal/fsc28_linux64/fsc28"]
