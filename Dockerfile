FROM twobombs/deploy-nvidia-docker

RUN git clone https://github.com/zen-kernel/zen-kernel.git
RUN cd zen-kernel && ./configure && make & make all

EXPOSE 6080
ENTRYPOINT /root/run
