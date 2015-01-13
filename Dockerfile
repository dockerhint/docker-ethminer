FROM ubuntu:14.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get install -y curl build-essential git zip make openssl libssl-dev
RUN apt-get clean
RUN apt-get -y update
RUN apt-get -y install language-pack-en-base
RUN dpkg-reconfigure locales
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN add-apt-repository -y ppa:ethereum/ethereum-dev
RUN apt-get -y update
RUN apt-get -y upgrade
RUN sudo apt-get -y install build-essential g++-4.8 git cmake libboost-all-dev automake unzip libgmp-dev libtool libleveldb-dev yasm libminiupnpc-dev libreadline-dev scons libncurses5-dev libcurl4-openssl-dev wget libjsoncpp-dev libargtable2-dev libcryptopp-dev libjson-rpc-cpp-dev
RUN mkdir -p /usr/src
WORKDIR /usr/src/
RUN git clone https://github.com/ethereum/cpp-ethereum && cd cpp-ethereum && git checkout develop && mkdir build && cd build && cmake .. -DHEADLESS=1 && make -j4
ADD init.sh /usr/src/init.sh
EXPOSE 30303
CMD chmod a+x /usr/src/init.sh && /usr/src/init.sh
