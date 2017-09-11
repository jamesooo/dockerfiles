#! /bin/bash
for HOST in $(echo $HOSTS | sed "s/,/ /g")
do
  openssl req -x509 -nodes -sha256 -newkey rsa:2048 -subj \
    "/C=US/ST=California/L=Belmont/O=IT/CN=${HOST}" -days 3650 -keyout \
    "/certs/${HOST}.key" -out "/certs/${HOST}.crt" -extensions \
    v3_ca
done
