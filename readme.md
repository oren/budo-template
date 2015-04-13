# Template for using Budo

## Run

    docker-compose build
    docker-compose run app npm install
    docker-compose run --service-ports app npm run watch

Since the browser is not being refreshed I tried the following but it doesn't solve it:

    docker build -t budotemplate_app .
    xhost && docker run -it -p 3000:3000 -p 35729:35729 -v $(pwd):/src -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged budotemplate_app  npm run watch
