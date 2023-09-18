FROM ubuntu:18.04

RUN apt update && apt -y install gdb curl python3 binutils file locales
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8
RUN bash -c "$(curl -fsSL https://gef.blah.cat/sh)"

ADD * .

CMD /bin/bash
