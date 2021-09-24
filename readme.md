# Service API Database
MongoDB database to be run together with the Service APIs.

## Repository
```
git clone git@github.com:TIP-Internal-Project/tip-tids-service-api-database.git
```

## Development Build

### Startup
```
docker-compose up -d --build
```

### Shutdown
```
docker-compose down -v --rmi all
```

### Health check
```
docker ps -a
```

### Browse
- http://localhost:8081


## Production Build
```
docker build -t telusinternational.com/tip-tids-service-api-database .
docker run -d --name mongodb --env-file=db-config.env -p 27017:27017 telusinternational.com/tip-tids-service-api-database
```

### Connect via mongo CLI
```
docker exec -it mongodb bash
mongosh -u {USERNAME} -p {PASSWORD}
```