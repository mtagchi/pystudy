FROM python:3.8.0

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get clean \
  && apt-get install -y apache2 \
  && pip install --upgrade pip

RUN echo "ServerName localhost" | tee /etc/apache2/conf-available/fqdn.conf
RUN a2enconf fqdn
