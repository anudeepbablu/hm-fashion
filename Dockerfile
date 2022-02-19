FROM nvcr.io/nvidia/merlin/merlin-training:0.6
#FROM ubuntu:latest
ARG PYTHON_VERSION=3.6
EXPOSE 8888
EXPOSE 8008
EXPOSE 8786
EXPOSE 8787

# update pip3
RUN pip install --user kaggle
RUN pip install jupyterlab
# custom packages
#RUN pip install -U tensorflow-gpu tensorflow_hub
#RUN pip install keras
#RUN pip install urllib3
#RUN pip install pillow
#RUN pip install tqdm
#RUN pip install regex
#RUN pip install gensim nltk
#RUN conda install pytorch torchvision -c pytorch

# startup command
WORKDIR /home/anudeep/kaggle
CMD jupyter notebook --allow-root --ip=0.0.0.0 --no-browser --NotebookApp.token=''

