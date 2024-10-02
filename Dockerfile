FROM python:3
WORKDIR /demo

COPY app.py .

RUN chmod +x app.py && python3 app.py init cf && chmod +x ./*

EXPOSE 8080

CMD ["python3", "app.py", "run"]

USER 10001
