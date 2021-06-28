# guide
# https://docs.google.com/document/d/1i9w7UQImTS0u14egFc6DrXsq7UuSeCvEM2dWpWcEE58/edit
docker login
docker pull jenkins/jenkins
docker run -d -p 8080:8080 -v /home/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -u root jenkins/jenkins

vid=`docker ps -a | grep jenkins | awk '{print $1}'`





