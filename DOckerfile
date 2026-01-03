# Hanna Dalsace
# 314680224
# Docker file

FROM ubuntu:16.04

RUN apt-get -qq update && \
    apt-get install -y --no-install-recommends --reinstall ca-certificates \
        git \
        make \
        gcc-multilib \
        g++-multilib \
        perl \
        qemu-system-x86 \
    && git clone https://github.com/mit-pdos/xv6-public.git xv6 \
    && chmod +x xv6/*.pl \
    && cd xv6 && make clean && make

WORKDIR /xv6

CMD ["/bin/bash"]
