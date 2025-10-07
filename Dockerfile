# Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY . .
#RUN npm install ->required dependencies ,need package.json 
#If your Docker image is supposed to be a Node.js app:
#Create package.json in the repo root:
#cd /var/lib/jenkins/workspace/my-second-pipeline-docker
#npm init -y
#Add some dependencies if needed, e.g.:
#npm install express --save
#Create a minimal index.js (or app.js) file:
#// index.js
#const express = require('express');
#const app = express();
#app.get('/', (req, res) => res.send('Hello from Docker!'));
#app.listen(3000, () => console.log('Server running on port 3000'));
#Commit and push to GitHub:
#git add package.json index.js
#git commit -m "Add Node.js app for Docker build"
#git push origin main

#Build a Docker image without Node.js dependencies
#If you just want a simple Docker image that doesn’t need npm:
#CMD ["npm", "start"]
# Skip npm install if no package.json
CMD ["echo", "Hello from Docker container!"]
