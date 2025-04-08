FROM linuxserver/code-server:4.99.0

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv python3-numpy && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    rm -rf /var/lib/apt/lists/*

RUN echo "export PATH=\$PATH:/config/.local/bin" >> /config/.bashrc
