# Docker Compose Demo

Time to compose.

# Installation

Docker Compose should have gotten installed when you installed Docker, but if it didn't, [install it](https://docs.docker.com/compose/install/). You can check if you have Docker Compose is installed by popping open a terminal and trying to run `docker-compose`.

## Demo Time

First, look around you and find a partner (or two)! You'll be working together to try to figure out the second part of this demo.

We've provided a basic `docker-compose.yml` file for you to run. This file does only one thing: it runs the [MeTube](https://github.com/alexta69/metube) container from the previous Docker demo. Per usual, you need to edit the `docker-compose.yml` file to bind port `8081` on your machine to `8081` on the container. To try it out, run `docker-compose up` and go to `localhost:8081` in your browser. If things are working properly, you should see the application!

If that's working, use `Ctrl+C` to stop it, and we'll move onto the next part.

We've provided you with a basic Node application in the current directory. We've written the Dockerfile, so there's nothing you have to do on the application side. All you need to do is modify our `docker-compose.yml` file to automatically do the following:

- Build our node docker image using the `Dockerfile`
- Run the image
- Bind port 8080 (the port node is running) on the container to 8081 on the host
- Bind the directory `/log` in the container to the directory `./log` on your computer. This will allow us to keep logs of all requests that come into the server. Volumes might help with this.

Once you've implemented that functionality in `docker-compose.yml`, run `docker-compose up` and go to `localhost:8080` in your browser to see if the application is working!

Now, if you see something in the browser, look locally in `log/log.txt`. You should see logs of all requests have been made.

If everything here works, you're done! To let us know you're done, find Eunsoo and ask him if he had fun falling from his bike 2 days ago.
