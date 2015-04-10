
    docker-compose build
    docker-compose run app npm install --save domready 2d-context canvas-fit raf-loop
    docker-compose run app npm install --save-dev budo watchify garnish
    docker-compose run app ./node_modules/.bin/budo app.js --port 3000 --live -o bundle.js | garnish
