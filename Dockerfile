FROM python

RUN apk add --no-cache --update gimp ghostscript-fonts dbus-x11

RUN pip install butterfly
RUN pip install libsass

RUN echo "root\nroot\n" | passwd root

EXPOSE 8080
ENTRYPOINT ["butterfly.server.py"]
CMD ["--port=8080", "--unsecure", "--host=0.0.0.0"]
