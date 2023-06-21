FROM mongo:bionic
# Setting up a working directory
ENV WORKDIR /usr/local/work
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d
ENV INSTALL_MONGO_SHELL mongo/setup.sh
RUN mkdir -p $WORKDIR
# Initialization commands for replicating databases
COPY ./$INSTALL_MONGO_SHELL $AUTO_RUN_DIR/
COPY .env /.env
RUN chmod +x $AUTO_RUN_DIR/setup.sh