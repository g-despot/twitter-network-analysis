echo Killing old Docker processes
docker-compose rm -fs

echo Building Docker images
docker-compose build

echo Starting Docker containers
docker-compose up -d core
sleep 1
docker-compose up -d stream
docker-compose up backend-app
