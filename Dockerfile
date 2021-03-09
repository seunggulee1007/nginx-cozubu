FROM nginx
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./install.sh ./install.sh

RUN chmod +x install.sh
RUN ./install.sh