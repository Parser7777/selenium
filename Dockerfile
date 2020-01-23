FROM alpine:3.11

RUN echo "http://dl-4.alpinelinux.org/alpine/v3.11/main" >> /etc/apk/repositories && \
	echo "http://dl-4.alpinelinux.org/alpine/v3.11/community" >> /etc/apk/repositories && \
	apk update && \
	apk add python3 py-pip curl unzip libexif udev chromium chromium-chromedriver xvfb && \
	pip3 install selenium && \
	pip3 install pyvirtualdisplay

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/ \
    DISPLAY=:99
