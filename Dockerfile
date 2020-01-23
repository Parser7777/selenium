FROM alpine:3.10

RUN echo "http://dl-4.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories && \
	echo "http://dl-4.alpinelinux.org/alpine/v3.10/community" >> /etc/apk/repositories && \
	apk update && \
	apk add python py-pip curl unzip libexif udev chromium chromium-chromedriver xvfb && \
	pip install selenium && \
	pip install pyvirtualdisplay

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/ \
    DISPLAY=:99
