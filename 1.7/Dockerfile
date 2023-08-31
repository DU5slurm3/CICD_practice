FROM python:3.7-alpine
WORKDIR /code

ENV GCC_VERSION=12.2.1_git20220924-r10
ENV MUSL_DEV_VERSION=1.2.4-r1
ENV LINUX_HEADERS_VERSION=6.3-r0

ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0

RUN apk add --no-cache gcc=$GCC_VERSION musl-dev=$MUSL_DEV_VERSION linux-headers=$LINUX_HEADERS_VERSION

COPY requirements.txt requirements.txt
RUN pip --no-cache-dir install -r requirements.txt
COPY . .

CMD ["flask", "run"]

