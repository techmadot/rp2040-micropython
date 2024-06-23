FROM debian:12.5-slim

# Install toolchain
RUN apt update && \
    apt install -y  git cmake python3 python3-pip build-essential \
    gcc-arm-none-eabi pkg-config libusb-1.0-0-dev libffi-dev  \
    usbutils
RUN pip3 install --break-system-packages serial serial.tool

RUN git clone --depth 1 --branch v1.22.0 --recursive https://github.com/micropython/micropython.git 

## host用Micropython
RUN (cd micropython/mpy-cross;make -j4) && \
    (cd micropython/ports/unix; make submodules; make -j2 && make install) && \
    cp micropython/tools/pyboard.py /usr/local/bin/
    
ENV SHELL /bin/bash



