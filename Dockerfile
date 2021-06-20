FROM python:3.6

COPY *.py /
COPY tdd.sh /

RUN echo $TARGETPLATFORM

RUN if [ "$TARGETPLATFORM" = "linux/arm/v7" ]; then \
    which lsb_release \
    lsb_release -a \
    mv /usr/bin/lsb_release /usr/bin/lsb_release.bak \
    pip install telethon; \
  else \
    pip install telethon cryptg; \
  fi

RUN chmod +x /tdd.sh

CMD [ "/tdd.sh" ]