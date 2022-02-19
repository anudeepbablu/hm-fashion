docker build -t reco_sys . && \

ifconfig && \

nvidia-docker run -it -p 8008:8888 -p 8797:8787 -p 8796:8786 -v /home/anudeep/kaggle:/home/anudeep/kaggle reco_sys




