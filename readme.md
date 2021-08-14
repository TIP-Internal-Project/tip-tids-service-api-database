# Service API Database
This is a DEV, LOCAL and TEST database to be run together with the Service APIs.

## Repository
```
git clone https://github.com/esonpaguia/tip-tids-service-api-database
```

## How to operate

### Startup
```
docker-compose up -d --build
```

### Health check
```
docker ps -a
```

### Browse
- http://localhost:8081

### Shutdown
```
docker-compose down -v --rmi all
```

### Connect via mongo CLI
```
docker exec -it mongodb bash
mongosh -u root -p pass12345
```