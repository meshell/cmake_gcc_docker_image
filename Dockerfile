FROM gcc:7.2

MAINTAINER Michel Estermann <estermann.michel@gmail.com>

RUN mkdir ~/temp && cd ~/temp
RUN wget https://cmake.org/files/v3.9/cmake-3.9.1.tar.gz && tar -xzvf cmake-3.9.1.tar.gz
RUN cd cmake-3.9.1/ && ./bootstrap && make -j4 && make install
RUN cd && rm -rf ~/tmp
