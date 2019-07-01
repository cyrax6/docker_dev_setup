FROM python:3
RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt
RUN apt-get update
RUN chmod 700 . ./run_local.sh

CMD ["./run_local.sh"]
