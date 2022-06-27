FROM heroku/heroku:18
RUN lscpu
RUN apt-get install -y curl git unzip wget ffmpeg
RUN curl -Lo /usr/bin/astra https://cesbo.com/astra-latest ; chmod +x /usr/bin/astra ; astra init 8080 ; systemctl start astra ; systemctl enable astra 
CMD ["bash", "start.sh"]
