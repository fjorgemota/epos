FROM ubuntu:trusty
RUN apt-get update && apt-get install -y wget tar gzip bin86 tcsh lib32stdc++6 libc6-i386 libc6-dev-i386 lib32stdc++6 libc6-i386 libc6-dev-i386 lib32z1 lib32ncurses5 lib32bz2-1.0 qemu-kvm make build-essential bc gdb && sudo apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/Yelp/dumb-init/releases/download/v1.1.3/dumb-init_1.1.3_amd64.deb && dpkg -i dumb-init_*.deb
RUN wget --no-check-certificate -O ia32.tar.gz https://epos.lisha.ufsc.br/dl87 && tar -zxvf ia32.tar.gz && mkdir  -p /usr/local/ia32/ && mv gcc-4.4.4 /usr/local/ia32/ && rm ia32.tar.gz
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
VOLUME /code
WORKDIR /code

