docker build -t pokedex-image .
docker run --name pokedex-container -p 3307:3306 -d pokedex-image
pause