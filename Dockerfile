FROM fedora:latest

RUN dnf upgrade -y
RUN dnf install -y git gcc g++ ninja-build cmake ghdl python3.13

ENV VIRTUAL_ENV=/opt/hdl-tools
RUN python3.13 -m venv $VIRTUAL_ENV
ENV PATH=$VIRTUAL_ENV/bin:$PATH
RUN pip install pytest
RUN pip install git+https://github.com/nupole/pvm

ENTRYPOINT ["/bin/bash"]