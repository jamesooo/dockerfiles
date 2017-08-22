# description
this image will generate ssl certs for a comma separated list of domains and place them into /certs. it can also be used to generate dhparam.pem files, though that process takes a really long time so it is not enabled by default
# using the image
this image requires the environment variable `HOSTS` to be set to a comma separated list of all domain names. in order to preserve your cert files make sure you mount `/certs/` as a shared directory with your host machine.
you may optionally set the environment variable `DHPARAM` to `yes` in order to generate `dhparam.pem`.
## example
`docker run -it -e HOSTS='domain1.com,domain2.com' -v /home/joneal/certs:/certs -e DHPARAM='yes' jonealcmd/openssl`
