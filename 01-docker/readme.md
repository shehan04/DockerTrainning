### Task 1

Run the https://hub.docker.com/_/ghost [ghost] application locally by binding the required ports

### Task 2

[1] Build the docker file in folder volume-binding. 
[2] After building, run the image you just built on your machine and expose the relavent port looking at the dockerfile
[3] Hot reloading is when you change something on your code, the server already restarts. This is not a feature of Docker. But a feature of JavaScript which we can enable. Edit the dockerfile to run the command ```npm i -g nodemon``` and change the cmd to use nodemon instead of node.
[4] After editing the dockerfile, build again and now, run the container by binding the volume-binding folder to the container as well and then try to make a change in app.js "hello world" string and see if the changes are immediately visible in the browser.
[5] Check the logs of the container you just ran.
[6] Push this hello word image you created to your own docker registry.
[7] Try to run the image you pushed, in an online docker playground - https://www.katacoda.com/courses/docker/playground


### Task 3

Choose a project you like and try building a dockerfile for one of those projects and push it to your own docker registry.