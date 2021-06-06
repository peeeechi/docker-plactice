FROM jupyter/scipy-notebook:latest

USER root
WORKDIR /tmp

# 必要なツールとIPAフォントをインストールします
RUN apt-get update && apt-get install -y gnupg curl fonts-ipafont fonts-ipaexfont
# Google Chromeをインストールします
RUN wget https://dl.google.com/linux/linux_signing_key.pub \
 && apt-key add linux_signing_key.pub \
 && echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list \
 && apt-get update \
 && apt-get install -y google-chrome-stable \
 && google-chrome --version

# Chrome Driverをインストールします
RUN CHROMEDRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` \
 && curl -sS -o /tmp/chromedriver_linux64.zip http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip \
 && unzip /tmp/chromedriver_linux64.zip \
 && mv chromedriver /usr/local/bin/

# PermissionError: [Errno 13] Permission denied: '/home/jovyan/.local/share/jupyter'
# となぜか怒られるのでとりあえず所有者を変更
RUN chown -R jovyan /home/jovyan/.local

USER jovyan
# selenium導入
RUN pip install selenium
WORKDIR /home/jovyan