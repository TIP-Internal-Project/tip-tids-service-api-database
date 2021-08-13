# Service API Database
This is a DEV database to be run together with the Service Engagement APIs.

## Repository
```
git clone https://github.com/esonpaguia/service-api-database.git
```

## How to operate

### Startup
```
docker-compose up -d
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