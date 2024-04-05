FROM alpine:latest
# Install SQLite
RUN apk --no-cache add sqlite
# Create a directory to store the database
WORKDIR /db

COPY /database /data

RUN sqlite3 /data/db.sqlite < /data/init.sql
# Copy your SQLite database file into the container
# Expose the port if needed
EXPOSE 1433
# Command to run when the container starts
CMD ["sqlite3", "/data/db.sqlite"]