# syntax=docker/dockerfile:1
FROM ubuntu:18.04
COPY ./ECPy_mod /ECPy_mod

RUN apt-get update
RUN apt-get -y install python-dev libusb-1.0-0-dev libudev-dev curl build-essential git

RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
RUN python2 get-pip.py

RUN python2 -m pip install --upgrade setuptools
RUN python2 -m pip install ECPy_mod/dist/ECPy-1.2.3
RUN python2 -m pip install hidapi==0.9.0.post3
RUN python2 -m pip install ledgerblue==0.1.34

RUN git clone https://github.com/LedgerHQ/app-ssh-agent.git

WORKDIR app-ssh-agent
COPY ./run_agent.sh .
RUN chmod u+x ./run_agent.sh
RUN echo "exit(0)" >> getPublicKey.py

#RUN python2 ./getPublicKey.py > pubkey.txt
#RUN export PUBKEY=`cat pubkey.txt | tail -n 1 | awk '{print $2;}'`

CMD ["./run_agent.sh"]
