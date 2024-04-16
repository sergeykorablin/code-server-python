FROM linuxserver/code-server:4.23.1

RUN apt-get update && \
    apt-get install -y python3 python3-pip python3.10-venv && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    rm -rf /var/lib/apt/lists/*

RUN pip install numpy

RUN echo "export PATH=\$PATH:/config/.local/bin" >> /config/.bashrc
