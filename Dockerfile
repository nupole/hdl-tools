FROM fedora:latest

RUN dnf install -y gcc g++ ninja-build cmake ghdl python python-pip

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN rm requirements.txt

ENTRYPOINT ["/bin/bash"]
