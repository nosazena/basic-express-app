#! /bin/bash

#navigate to user directory
cd /home/ec2-user/

#Create folders for the task related files
mkdir  /home/ec2-user/mastering_devops2
mkdir  /home/ec2-user/mastering_devops2/logs

#navigate to the task folder
cd /home/ec2-user/mastering_devops2
echo "Folders created" > /home/ec2-user/mastering_devops2/logs/logs.txt

#install git - update package manager and install git 
sudo yum update -y
sudo yum install git
echo "Git installed" >> /home/ec2-user/mastering_devops2/logs/logs.txt

#clone github repo
git clone https://github.com/marcdomain/basic-express-app.git
echo "repository cloned successfully" >> /home/ec2-user/mastering_devops2/logs/logs.txt

#Navigate to cloned repo folder
cd /home/ec2-user/mastering_devops2/basic-express-app

#install node JS
yes Y | curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install --lts

#check node JS installed version 
node -e "console.log('Running Node.js ' + process.version)" >> /home/ec2-user/mastering_devops2/logs/logs.txt

#install and start npm
npm install
npm start
echo "application started successfully" >> /home/ec2-user/mastering_devops2/logs/logs.txt


