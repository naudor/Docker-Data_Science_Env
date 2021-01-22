FROM jupyter/scipy-notebook

MAINTAINER Gaarv <@Gaarv1911>

USER root

# bash instead of dash to use source
RUN ln -snf /bin/bash /bin/sh
RUN apt-get update && apt-get install -y \
		zbar-tools \
		python3-opencv

USER jovyan

RUN pip install pandas-datareader
RUN pip install prophet
RUN pip install plotly
RUN pip install --upgrade keras
RUN pip install --upgrade tensorflow 
#\
#&& pip install --upgrade --no-deps git+git://github.com/fchollet/keras.git