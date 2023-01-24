FROM python
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .

CMD [ "flask", "run", "-h", "0.0.0.0" ]