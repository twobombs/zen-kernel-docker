FROM twobombs/deploy-nvidia-docker

RUN git clone https://github.com/zen-kernel/zen-kernel.git
RUN apt update && apt install -y flex bison libssl-dev libelf-dev 
RUN cd zen-kernel && mkdir debian && sed -i 's/*CONFIG_SYSTEM_TRUSTED_KEYS=.*/CONFIG_SYSTEM_TRUSTED_KEYS=""/g' .config && make olddefconfig && make

EXPOSE 6080
ENTRYPOINT /root/run
