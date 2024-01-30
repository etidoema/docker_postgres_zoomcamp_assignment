FROM python:3.12.1

RUN pip install pandas sqlalchemy psycopg2
# RUN apt-get install wget

# Set the working directory in the container to /app
WORKDIR /app
COPY ingest_data.py ingest_data.py
COPY yellow_tripdata_2021-05.csv /app/yellow_tripdata_2021-05.csv

# Set environment variables for database connection
# ENV POSTGRES_USER=root
# ENV POSTGRES_PASSWORD=root
# ENV POSTGRES_HOST=localhost
# ENV POSTGRES_PORT=5431
# ENV POSTGRES_DB=ny_taxi
# ENV TABLE_NAME=yellow_taxi_trips

# Run your_script.py when the container launches
ENTRYPOINT [ "python", "ingest_data.py" ]

