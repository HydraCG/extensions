FROM python:buster

RUN pip install bikeshed==2.4.4
RUN bikeshed update

ENTRYPOINT ["bikeshed"]
CMD ["--help"]
