FROM python:3.11.5

RUN apt-get update && apt-get install -y cppcheck

RUN pip install --upgrade pip
RUN pip install cppcheck-codequality

COPY scanner.sh /

RUN chmod +x /scanner.sh

ENTRYPOINT ["/scanner.sh"]