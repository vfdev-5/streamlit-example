FROM python:3.8-slim-buster

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["bash", "-c", "streamlit run --browser.serverAddress 0.0.0.0 --server.port 80 streamlit_app.py"]
