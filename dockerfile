FROM python:3
ENV PYTHONUNBUFFERED 1

# App setup
ADD . /app
WORKDIR /app

# Requirements installation
RUN pip install -r requirements.txt

COPY . .

RUN ls

#COPY entrypoint.sh
#RUN chmod +x entrypoint.sh

#ENTRYPOINT ["entrypoint.sh"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
