FROM	ubuntu:latest

RUN	apt-get update \
 && apt-get install -y \
  python-pip \
  gcc \
  phantomjs \

  && pip install robotframework \
  && pip install robotframework-seleniumlibrary

COPY    Dockerfile /src/Dockerfile

CMD ["echo", "Hola CI Robotframework"]