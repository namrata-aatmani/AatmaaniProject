FROM node:0.10.41
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT
MAINTAINER "namratamansur@gmail.com"
RUN apt-get update
#install git and express with express generator
RUN apt-get install git -y
RUN npm install -g express
RUN npm install -g express-generator
RUN git clone https://github.com/namrata4447/AatmaaniProject.git
WORKDIR /AatmaaniProject/nodewebsite/express-website
#install npm and nodemailer
RUN npm install
RUN npm install --save nodemailer
#ENTRYPOINT npm start
EXPOSE 3000

