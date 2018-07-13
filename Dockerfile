FROM python:2.7-slim

RUN pip install shadowsocks==2.8.2

ADD ssconfig.json /etc/
ADD openssl.py /usr/local/lib/python2.7/site-packages/shadowsocks/crypto/openssl.py

CMD  echo Your config file is: &&\
    cat /etc/ssconfig.json &&\
    ssserver -c /etc/ssconfig.json 
