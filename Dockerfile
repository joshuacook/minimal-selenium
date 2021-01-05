FROM jupyter/pyspark-notebook
USER root
RUN apt-get update && apt-get install -y wget gnupg unzip
RUN wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/87.0.4280.20/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/
# set display port to avoid crash
ENV DISPLAY=:99
USER jovyan
RUN pip install selenium
