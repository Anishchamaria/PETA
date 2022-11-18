  FROM python:3.10.4
  LABEL maintainer="Anish Chamaria, 19it1128@students.stjosephstechnology.ac.in"
  RUN apt-get update
  RUN mkdir /app
  WORKDIR /app
  COPY . /app
  RUN pip install -r requirments.txt
  EXPOSE 5000
  ENTRYPOINT [ "flask" ]
  CMD [ "run" ]