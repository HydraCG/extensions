FROM python:buster

RUN pip install bikeshed==3.4.2
RUN bikeshed update

ENTRYPOINT ["bikeshed"]
CMD ["--help"]
