#FROM python:3.5.9-slim-stretch
#FROM python:3.4-alpine3.8
FROM python:3.4-slim-stretch

ENV TF_BINARY_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.1.0-cp34-cp34m-linux_x86_64.whl

ADD pyflann /pyflann
ADD Humanoid /Humanoid

RUN apt-get update \ 
	&& apt-get -q -y --no-install-recommends install git make automake cmake qt4-default gcc g++ git tk python3-setuptools \ 
	&& pip install --upgrade pip 

# install pyflann
RUN cd /pyflann \
	&& python setup.py install

WORKDIR /Humanoid

RUN pip install $TF_BINARY_URL
RUN pip install index matplotlib scipy
RUN pip install -U tensorflow
RUN pip install PyYAML==3.13 
RUN pip install -U keras

RUN cp ./res/model/model_495000.ckpt.data-00000-of-00001 ./res/model/model_495000.ckpt 

EXPOSE 50405

#python agent.py -c config.json
CMD ["python", "agent.py", "-c", "config.json"]