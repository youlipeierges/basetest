FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'root:5m4mbTO80wi8bOUKh7nVMAoajQHmIKmu5zkYCq6uzS1zuBpm06jwZAkl1ZS2ku0Jc71NTHKhPQoKcY41lS3N9g182UrXRzs9AwhEVu9n3WhikhvbosWZ9Ibzd8RmMIxB' | chpasswd

EXPOSE 22

CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
