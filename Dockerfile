FROM mongo:5.0

COPY ./db-init.js /docker-entrypoint-initdb.d/db-init.js

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD ["echo", "\"db.runCommand('ping').ok\"", "|", "mongo -u ${MONGO_INITDB_ROOT_USERNAME} -p ${MONGO_INITDB_ROOT_PASSWORD} --quiet"]
