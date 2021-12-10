FROM fedora:34

RUN yum install -y gcc g++ ninja-build cmake ghdl python python-devel python-pip
RUN pip install numpy
RUN pip install cocotb cocotb-bus

RUN useradd -m develop

ENTRYPOINT /bin/bash
