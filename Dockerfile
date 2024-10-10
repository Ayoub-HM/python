FROM python:latest
WORKDIR /Monitoring
COPY Requirement.txt .
RUN pip3 install -r Requirement.txt
COPY . .
ENV FLASK_APP=py.py
ENV FLASK_ENV=development
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 5000
CMD ["flask", "run"]


