FROM ubuntu

COPY script.sh /script.sh

RUN chmod +x /script.sh

RUN ./script.sh

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
