docker build -t myadmin-image .
docker run --name myadmin-container -p 81:80 -d myadmin-image
pause